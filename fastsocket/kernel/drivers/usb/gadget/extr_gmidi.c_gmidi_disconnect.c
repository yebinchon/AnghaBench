
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct gmidi_device {int lock; } ;


 struct gmidi_device* get_gadget_data (struct usb_gadget*) ;
 int gmidi_reset_config (struct gmidi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gmidi_disconnect(struct usb_gadget *gadget)
{
 struct gmidi_device *dev = get_gadget_data(gadget);
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 gmidi_reset_config(dev);





 spin_unlock_irqrestore(&dev->lock, flags);




}
