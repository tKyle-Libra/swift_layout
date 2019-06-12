//
//  UIButton+Layout.swift
//  top28ios
//
//  Created by zw-bdz-003 on 2019/6/12.
//  Copyright © 2019 zwonline. All rights reserved.
//

extension UIButton{
    enum Position {
        case top
        case bottom
        case left
        case right
    }
    
    func setImagePosition(position:Position,space:Float) {
        switch position {
        case .top:
            let titleHeight = titleLabel?.bounds.height ?? 0
            let imageHeight = imageView?.bounds.height ?? 0
            let imageWidth = imageView?.bounds.width ?? 0
            let titleWidth = titleLabel?.bounds.width ?? 0
            titleEdgeInsets = UIEdgeInsets(top: (titleHeight + CGFloat(space)) * 0.5,
                                           left: -imageWidth * 0.5,
                                           bottom: -CGFloat(space),
                                           right: imageWidth * 0.5)
            imageEdgeInsets = UIEdgeInsets(top: 0,
                                           left: titleWidth * 0.5,
                                           bottom: (imageHeight + CGFloat(space)),
                                           right: -titleWidth * 0.5)
        case .bottom:
            let titleHeight = titleLabel?.bounds.height ?? 0
            let imageHeight = imageView?.bounds.height ?? 0
            let imageWidth = imageView?.bounds.width ?? 0
            let titleWidth = titleLabel?.bounds.width ?? 0
            titleEdgeInsets = UIEdgeInsets(top: -(titleHeight + CGFloat(space)) * 0.5,
                                           left: -imageWidth * 0.5,
                                           bottom: CGFloat(space),
                                           right: imageWidth * 0.5)
            imageEdgeInsets = UIEdgeInsets(top: (imageHeight + CGFloat(space)),
                                           left: titleWidth * 0.5,
                                           bottom: 0,
                                           right: -titleWidth * 0.5)
            
        case .left:
            titleEdgeInsets = UIEdgeInsets(top: 0, left: CGFloat(space), bottom: 0, right: 0)
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: CGFloat(space))
        case .right:
            let imageWidth = (imageView?.bounds.width ?? 0) + CGFloat(space)
            let titleWidth = (titleLabel?.bounds.width ?? 0) + CGFloat(space)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageWidth, bottom: 0, right: imageWidth)
            imageEdgeInsets = UIEdgeInsets(top: 0, left: titleWidth, bottom: 0, right: -titleWidth)
        }
    }
}

