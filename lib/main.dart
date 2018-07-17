import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Zoom Menu',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/wood_bk.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Text(
            'THE PALEO PADDOCK',
            style: TextStyle(
              fontFamily: 'bebas-neue',
              fontSize: 25.0,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            _RestaurandCard(),
            _RestaurandCard(),
            _RestaurandCard(),
          ],
        ),
      ),
    );
  }
}

class _RestaurandCard extends StatelessWidget {
  final String headImageAssetPath;
  final IconData icon;
  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final int heartCount;

  _RestaurandCard({
    this.headImageAssetPath,
    this.icon,
    this.iconBackgroundColor, 
    this.title,
    this.subtitle,
    this.heartCount
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Card(
                elevation: 10.0,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/eggs_in_skillet.jpg',
                      width: double.infinity,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Icon(
                              Icons.fastfood,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'il domacca',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'mermaid',
                                ),
                              ),
                              Text(
                                '78 5th AVENUE, NEW YORK',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'bebas-neue',
                                  letterSpacing: 1.0,
                                  color: Color(0xFFAAAAAA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.red[50],
                                Colors.red[100],
                                Colors.red[50],
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                              Text('84'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
  }
}