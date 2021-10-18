import UIKit

class FadeTail: UIIView {
    
    private lazy var gradientLayer: CAGradientLayer = {
        let l = CAGradientLayer()
        l.startPoint = CGPoint(x: 0.5, y: 0)
        l.endPoint = CGPoint(x: 0.5, y: 1)
        let baseColor = UIColor.white // for example
        l.colors = [
            baseColor.withAlphaComponent(0),
            baseColor.withAlphaComponent(1),
        ].map{$0.cgColor}
        layer.addSublayer(l)
        return l
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
