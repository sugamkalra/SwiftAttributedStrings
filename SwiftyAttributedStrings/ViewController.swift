//
//  ViewController.swift
//  SwiftyAttributedStrings
//
//  Created by Sugam Kalra on 15/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAttributedString: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Method call to set attributed string to UILabel
        setLabelText()
    }
    
    /**
     Method to set attributed string to UILabel
     
     @param nil
     
     @return nil
     */
    func setLabelText()
    {
        let string = "Attributed Strings Demo"
        let attributedString = NSMutableAttributedString(string: string)
        
        let dicFirstAttributes:[String:Any] = [NSForegroundColorAttributeName: UIColor.yellow, NSBackgroundColorAttributeName: UIColor.blue, NSUnderlineStyleAttributeName: 1]
        let dicSecondAttributes:[String:Any] = [NSForegroundColorAttributeName: UIColor.blue, NSBackgroundColorAttributeName: UIColor.red, NSFontAttributeName: UIFont.systemFont(ofSize: 40)]
        let dicThirdAttributes:[String:Any] = [NSForegroundColorAttributeName: UIColor.white, NSBackgroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 50)]
        
        
        attributedString.addAttributes(dicFirstAttributes, range: NSRange(location: 0, length: 10))
        attributedString.addAttributes(dicSecondAttributes, range: NSRange(location: 10, length: 8))
        attributedString.addAttributes(dicThirdAttributes, range: NSRange(location: 18, length: 5))
        
        lblAttributedString.attributedText = attributedString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

