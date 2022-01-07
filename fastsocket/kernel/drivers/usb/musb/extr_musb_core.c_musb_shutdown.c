
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct musb {int lock; int * clock; } ;


 int clk_put (int *) ;
 struct musb* dev_to_musb (int *) ;
 int musb_generic_disable (struct musb*) ;
 int musb_platform_disable (struct musb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void musb_shutdown(struct platform_device *pdev)
{
 struct musb *musb = dev_to_musb(&pdev->dev);
 unsigned long flags;

 spin_lock_irqsave(&musb->lock, flags);
 musb_platform_disable(musb);
 musb_generic_disable(musb);
 if (musb->clock) {
  clk_put(musb->clock);
  musb->clock = ((void*)0);
 }
 spin_unlock_irqrestore(&musb->lock, flags);


}
