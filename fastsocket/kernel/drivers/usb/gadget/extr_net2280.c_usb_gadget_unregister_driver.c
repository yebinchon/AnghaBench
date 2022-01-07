
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct usb_gadget_driver {TYPE_3__ driver; int (* unbind ) (TYPE_4__*) ;} ;
struct TYPE_6__ {int * driver; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;
struct net2280 {TYPE_2__* pdev; struct usb_gadget_driver* driver; TYPE_4__ gadget; int lock; } ;
struct TYPE_7__ {int dev; } ;


 int DEBUG (struct net2280*,char*,int ) ;
 int EINVAL ;
 int ENODEV ;
 int dev_attr_function ;
 int dev_attr_queues ;
 int device_remove_file (int *,int *) ;
 int net2280_led_active (struct net2280*,int ) ;
 int net2280_pullup (TYPE_4__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_activity (struct net2280*,struct usb_gadget_driver*) ;
 int stub1 (TYPE_4__*) ;
 struct net2280* the_controller ;

int usb_gadget_unregister_driver (struct usb_gadget_driver *driver)
{
 struct net2280 *dev = the_controller;
 unsigned long flags;

 if (!dev)
  return -ENODEV;
 if (!driver || driver != dev->driver || !driver->unbind)
  return -EINVAL;

 spin_lock_irqsave (&dev->lock, flags);
 stop_activity (dev, driver);
 spin_unlock_irqrestore (&dev->lock, flags);

 net2280_pullup (&dev->gadget, 0);

 driver->unbind (&dev->gadget);
 dev->gadget.dev.driver = ((void*)0);
 dev->driver = ((void*)0);

 net2280_led_active (dev, 0);
 device_remove_file (&dev->pdev->dev, &dev_attr_function);
 device_remove_file (&dev->pdev->dev, &dev_attr_queues);

 DEBUG (dev, "unregistered driver '%s'\n", driver->driver.name);
 return 0;
}
