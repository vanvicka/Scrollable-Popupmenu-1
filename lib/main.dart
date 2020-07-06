import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomePage(),));

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {

  List<int>items = [1,2,3,4,5,6,7,8,9,10,11,12,13];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PopupMenuButton(
          child: Icon(Icons.add_shopping_cart),
          offset: Offset(-1.0, -320.0),
          elevation: 0,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          itemBuilder: (context) {
            return <PopupMenuEntry<Widget>>[
              PopupMenuItem<Widget>(
                child: Container(
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Scrollbar(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final trans = items[index];
                        return ListTile(
                          title: Text(
                            trans.toString(),
                            style: TextStyle(
                              fontSize: 16,

                            ),
                          ),

                          onTap: () {
                            //what would you like to do?
                          },
                        );
                      },
                    ),
                  ),
                  height: 300,
                  width: 1000,
                ),
              )
            ];
          }),
    );
  }

}























