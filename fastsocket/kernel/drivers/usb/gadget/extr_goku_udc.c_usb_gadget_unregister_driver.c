
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int (* unbind ) (TYPE_3__*) ;} ;
struct TYPE_4__ {int * driver; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct goku_udc {TYPE_3__ gadget; int lock; struct usb_gadget_driver* driver; } ;


 int DBG (struct goku_udc*,char*,int ) ;
 int EINVAL ;
 int ENODEV ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_activity (struct goku_udc*,struct usb_gadget_driver*) ;
 int stub1 (TYPE_3__*) ;
 struct goku_udc* the_controller ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct goku_udc *dev = the_controller;
 unsigned long flags;

 if (!dev)
  return -ENODEV;
 if (!driver || driver != dev->driver || !driver->unbind)
  return -EINVAL;

 spin_lock_irqsave(&dev->lock, flags);
 dev->driver = ((void*)0);
 stop_activity(dev, driver);
 spin_unlock_irqrestore(&dev->lock, flags);

 driver->unbind(&dev->gadget);
 dev->gadget.dev.driver = ((void*)0);

 DBG(dev, "unregistered driver '%s'\n", driver->driver.name);
 return 0;
}
