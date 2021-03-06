import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:finance_web/sections/header_section.dart';
import 'package:finance_web/sections/scaffold_section.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  final List<String> categories = [
    'food',
    'transport',
    'bills',
    'market',
    'others',
  ];

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return ScaffoldSection(
      page: 'New',
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 20.0,
          left: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderSection(),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Created payment',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color.fromRGBO(62, 77, 162, 1.0),
                ),
              ),
            ),
            Container(
              child: Text(
                'Title',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  prefixIcon: Icon(FeatherIcons.edit3),
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 25.0,
              ),
              child: Text(
                'Value',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Value',
                  prefixIcon: Icon(FeatherIcons.dollarSign),
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 25.0,
              ),
              child: Text(
                'Category',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              height: 120.0,
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 5,
                children: List.generate(
                  this.categories.length,
                  (index) {
                    return Container(
                      child: ListTile(
                        title: Text(
                          '${this.categories[index][0].toUpperCase()}${this.categories[index].substring(1)}',
                        ),
                        leading: Radio(
                          value: this.categories[index],
                          groupValue: this.categories,
                          activeColor: Colors.red,
                          onChanged: (i) {},
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: screen.width - 20.0,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                color: Color.fromRGBO(62, 77, 162, 1.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
