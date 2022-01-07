
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct usb_gadget_driver {TYPE_1__ driver; int (* unbind ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int * driver; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct lh7a40x_udc {TYPE_2__ gadget; int lock; struct usb_gadget_driver* driver; } ;


 int DEBUG (char*,int ) ;
 int EINVAL ;
 int ENODEV ;
 int device_del (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_activity (struct lh7a40x_udc*,struct usb_gadget_driver*) ;
 int stub1 (TYPE_2__*) ;
 struct lh7a40x_udc* the_controller ;
 int udc_disable (struct lh7a40x_udc*) ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct lh7a40x_udc *dev = the_controller;
 unsigned long flags;

 if (!dev)
  return -ENODEV;
 if (!driver || driver != dev->driver || !driver->unbind)
  return -EINVAL;

 spin_lock_irqsave(&dev->lock, flags);
 dev->driver = 0;
 stop_activity(dev, driver);
 spin_unlock_irqrestore(&dev->lock, flags);

 driver->unbind(&dev->gadget);
 dev->gadget.dev.driver = ((void*)0);
 device_del(&dev->gadget.dev);

 udc_disable(dev);

 DEBUG("unregistered gadget driver '%s'\n", driver->driver.name);
 return 0;
}
