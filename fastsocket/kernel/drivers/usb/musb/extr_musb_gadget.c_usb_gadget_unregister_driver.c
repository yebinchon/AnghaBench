
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_gadget_driver {int (* unbind ) (TYPE_2__*) ;int function; } ;
struct TYPE_5__ {int * driver; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct musb {int lock; scalar_t__ is_active; TYPE_2__ g; struct usb_gadget_driver* gadget_driver; TYPE_3__* xceiv; } ;
struct TYPE_7__ {int state; } ;


 int DBG (int,char*,int ) ;
 int EINVAL ;
 int OTG_STATE_UNDEFINED ;
 scalar_t__ is_otg_enabled (struct musb*) ;
 int musb_gadget_vbus_draw (TYPE_2__*,int ) ;
 int musb_hnp_stop (struct musb*) ;
 int musb_platform_try_idle (struct musb*,int ) ;
 int musb_to_hcd (struct musb*) ;
 int otg_set_peripheral (TYPE_3__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_activity (struct musb*,struct usb_gadget_driver*) ;
 int stub1 (TYPE_2__*) ;
 struct musb* the_gadget ;
 int usb_remove_hcd (int ) ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 unsigned long flags;
 int retval = 0;
 struct musb *musb = the_gadget;

 if (!driver || !driver->unbind || !musb)
  return -EINVAL;





 spin_lock_irqsave(&musb->lock, flags);





 if (musb->gadget_driver == driver) {

  (void) musb_gadget_vbus_draw(&musb->g, 0);

  musb->xceiv->state = OTG_STATE_UNDEFINED;
  stop_activity(musb, driver);
  otg_set_peripheral(musb->xceiv, ((void*)0));

  DBG(3, "unregistering driver %s\n", driver->function);
  spin_unlock_irqrestore(&musb->lock, flags);
  driver->unbind(&musb->g);
  spin_lock_irqsave(&musb->lock, flags);

  musb->gadget_driver = ((void*)0);
  musb->g.dev.driver = ((void*)0);

  musb->is_active = 0;
  musb_platform_try_idle(musb, 0);
 } else
  retval = -EINVAL;
 spin_unlock_irqrestore(&musb->lock, flags);

 if (is_otg_enabled(musb) && retval == 0) {
  usb_remove_hcd(musb_to_hcd(musb));




 }

 return retval;
}
