//
//  ViewController.swift
//  AttributedStringTest
//
//  Created by 박지용 on 2022/08/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10.0 // 줄 간격
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 15.0, weight: .semibold),
            .foregroundColor: UIColor.systemIndigo,
            .paragraphStyle: paragraphStyle
        ]
        
        let mutableAttributedString = NSMutableAttributedString(string: "가나다라마바사아자차카타파하", attributes: attributes)
        
        paragraphStyle.paragraphSpacing = 15.0
        let addtionalAttrubutes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 30.0, weight: .bold),
            .foregroundColor: UIColor.systemRed,
            .paragraphStyle: paragraphStyle
        ]
        
        mutableAttributedString.addAttributes(addtionalAttrubutes, range: NSRange(location: 3, length: 8))
        
        textView.attributedText = mutableAttributedString
        
//        let attributedText = NSAttributedString(string: "가나다라마바사아자차카타파하 ", attributes: attributes)
        
//        textView.attributedText = attributedText
    }
}
