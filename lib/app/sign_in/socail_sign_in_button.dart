import 'package:flutter/cupertino.dart';
import 'package:time_tracker/common_widget/custom_raised_button.dart';

class SocialSignInButton extends CutomRaisedButton {
  SocialSignInButton({
    @required String text,
    @required String assetName,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        assert(assetName != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset("images/google-logo.png"),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
