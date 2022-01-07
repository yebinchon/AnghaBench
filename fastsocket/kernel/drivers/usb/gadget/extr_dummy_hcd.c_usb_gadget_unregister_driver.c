
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct usb_gadget_driver {int (* unbind ) (TYPE_3__*) ;TYPE_1__ driver; } ;
struct TYPE_5__ {int * driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct dummy {int lock; scalar_t__ pullup; struct usb_gadget_driver* driver; TYPE_3__ gadget; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_dbg (int ,char*,int ) ;
 int dummy_to_hcd (struct dummy*) ;
 int set_link_state (struct dummy*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 struct dummy* the_controller ;
 int udc_dev (struct dummy*) ;
 int usb_hcd_poll_rh_status (int ) ;

int
usb_gadget_unregister_driver (struct usb_gadget_driver *driver)
{
 struct dummy *dum = the_controller;
 unsigned long flags;

 if (!dum)
  return -ENODEV;
 if (!driver || driver != dum->driver || !driver->unbind)
  return -EINVAL;

 dev_dbg (udc_dev(dum), "unregister gadget driver '%s'\n",
   driver->driver.name);

 spin_lock_irqsave (&dum->lock, flags);
 dum->pullup = 0;
 set_link_state (dum);
 spin_unlock_irqrestore (&dum->lock, flags);

 driver->unbind (&dum->gadget);
 dum->gadget.dev.driver = ((void*)0);
 dum->driver = ((void*)0);

 spin_lock_irqsave (&dum->lock, flags);
 dum->pullup = 0;
 set_link_state (dum);
 spin_unlock_irqrestore (&dum->lock, flags);

 usb_hcd_poll_rh_status (dummy_to_hcd (dum));
 return 0;
}
