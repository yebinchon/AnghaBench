
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int name; int * bus; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_6__*) ;int (* unbind ) (TYPE_6__*) ;TYPE_4__ driver; int setup; } ;
struct TYPE_12__ {TYPE_4__* driver; } ;
struct TYPE_13__ {TYPE_5__ dev; } ;
struct net2280 {int softconnect; struct usb_gadget_driver* driver; TYPE_6__ gadget; TYPE_3__* pdev; TYPE_2__* usb; TYPE_1__* ep; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int stdrsp; int usbctl; } ;
struct TYPE_8__ {scalar_t__ irqs; } ;


 int DEBUG (struct net2280*,char*,int ,int,...) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ USB_SPEED_HIGH ;
 int dev_attr_function ;
 int dev_attr_queues ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int ep0_start (struct net2280*) ;
 int net2280_led_active (struct net2280*,int) ;
 int readl (int *) ;
 int stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*) ;
 struct net2280* the_controller ;

int usb_gadget_register_driver (struct usb_gadget_driver *driver)
{
 struct net2280 *dev = the_controller;
 int retval;
 unsigned i;





 if (!driver
   || driver->speed != USB_SPEED_HIGH
   || !driver->bind
   || !driver->setup)
  return -EINVAL;
 if (!dev)
  return -ENODEV;
 if (dev->driver)
  return -EBUSY;

 for (i = 0; i < 7; i++)
  dev->ep [i].irqs = 0;


 dev->softconnect = 1;
 driver->driver.bus = ((void*)0);
 dev->driver = driver;
 dev->gadget.dev.driver = &driver->driver;
 retval = driver->bind (&dev->gadget);
 if (retval) {
  DEBUG (dev, "bind to driver %s --> %d\n",
    driver->driver.name, retval);
  dev->driver = ((void*)0);
  dev->gadget.dev.driver = ((void*)0);
  return retval;
 }

 retval = device_create_file (&dev->pdev->dev, &dev_attr_function);
 if (retval) goto err_unbind;
 retval = device_create_file (&dev->pdev->dev, &dev_attr_queues);
 if (retval) goto err_func;




 net2280_led_active (dev, 1);
 ep0_start (dev);

 DEBUG (dev, "%s ready, usbctl %08x stdrsp %08x\n",
   driver->driver.name,
   readl (&dev->usb->usbctl),
   readl (&dev->usb->stdrsp));


 return 0;

err_func:
 device_remove_file (&dev->pdev->dev, &dev_attr_function);
err_unbind:
 driver->unbind (&dev->gadget);
 dev->gadget.dev.driver = ((void*)0);
 dev->driver = ((void*)0);
 return retval;
}
