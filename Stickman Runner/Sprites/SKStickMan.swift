//
//  SKStickMan.swift
//  Stickman Runner
//
//  Created by Vlad Munteanu on 1/7/19.
//  Copyright © 2019 LesGarcons. All rights reserved.
//

import Foundation
import SpriteKit

class SKStickMan: SKSpriteNode {

    init() {
        
        super.init(texture: SKTexture(imageNamed: "1"), color: UIColor.clear, size: CGSize(width: 80,height: 90))
        self.zPosition = 1
        loadPhysicsBodyWithSize(size: CGSize(width: 80,height: 90))
    }
    
    func run() {
        
        var coinManRun : [SKTexture] = []
        for number in 1...4
        {
            coinManRun.append(SKTexture(imageNamed: "\(number)"))
        }
        
       self.run(SKAction.repeatForever(SKAction.animate(with: coinManRun, timePerFrame: 0.1)))
    }
    
    
    
    func loadPhysicsBodyWithSize(size: CGSize) {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.categoryBitMask = stickManCategory
        physicsBody?.contactTestBitMask = badGuyCategory
        physicsBody?.collisionBitMask = brickCategory
        physicsBody?.affectedByGravity = true
        physicsBody?.allowsRotation = false
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
