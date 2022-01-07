
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; int * bus; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_3__*) ;TYPE_2__ driver; int setup; int disconnect; } ;
struct TYPE_4__ {TYPE_2__* driver; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct goku_udc {TYPE_3__ gadget; struct usb_gadget_driver* driver; } ;


 int DBG (struct goku_udc*,char*,int ,...) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ USB_SPEED_FULL ;
 int stub1 (TYPE_3__*) ;
 struct goku_udc* the_controller ;
 int udc_enable (struct goku_udc*) ;

int usb_gadget_register_driver(struct usb_gadget_driver *driver)
{
 struct goku_udc *dev = the_controller;
 int retval;

 if (!driver
   || driver->speed < USB_SPEED_FULL
   || !driver->bind
   || !driver->disconnect
   || !driver->setup)
  return -EINVAL;
 if (!dev)
  return -ENODEV;
 if (dev->driver)
  return -EBUSY;


 driver->driver.bus = ((void*)0);
 dev->driver = driver;
 dev->gadget.dev.driver = &driver->driver;
 retval = driver->bind(&dev->gadget);
 if (retval) {
  DBG(dev, "bind to driver %s --> error %d\n",
    driver->driver.name, retval);
  dev->driver = ((void*)0);
  dev->gadget.dev.driver = ((void*)0);
  return retval;
 }




 udc_enable(dev);

 DBG(dev, "registered gadget driver '%s'\n", driver->driver.name);
 return 0;
}
