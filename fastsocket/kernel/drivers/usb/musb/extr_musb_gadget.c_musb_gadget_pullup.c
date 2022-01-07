
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct musb {int softconnect; int lock; } ;


 struct musb* gadget_to_musb (struct usb_gadget*) ;
 int musb_pullup (struct musb*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int musb_gadget_pullup(struct usb_gadget *gadget, int is_on)
{
 struct musb *musb = gadget_to_musb(gadget);
 unsigned long flags;

 is_on = !!is_on;




 spin_lock_irqsave(&musb->lock, flags);
 if (is_on != musb->softconnect) {
  musb->softconnect = is_on;
  musb_pullup(musb, is_on);
 }
 spin_unlock_irqrestore(&musb->lock, flags);
 return 0;
}
