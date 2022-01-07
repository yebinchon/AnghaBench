
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int devstatus; int lock; } ;
struct usb_gadget {int dummy; } ;


 int USB_DEVICE_SELF_POWERED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usba_udc* to_usba_udc (struct usb_gadget*) ;

__attribute__((used)) static int
usba_udc_set_selfpowered(struct usb_gadget *gadget, int is_selfpowered)
{
 struct usba_udc *udc = to_usba_udc(gadget);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);
 if (is_selfpowered)
  udc->devstatus |= 1 << USB_DEVICE_SELF_POWERED;
 else
  udc->devstatus &= ~(1 << USB_DEVICE_SELF_POWERED);
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
