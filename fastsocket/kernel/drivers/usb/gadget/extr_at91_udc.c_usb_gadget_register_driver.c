
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_1__*) ;TYPE_3__ driver; int setup; } ;
struct TYPE_5__ {TYPE_3__* driver; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;
struct at91_udc {int enabled; int selfpowered; TYPE_1__ gadget; struct usb_gadget_driver* driver; } ;


 int DBG (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ USB_SPEED_FULL ;
 struct at91_udc controller ;
 int dev_set_drvdata (TYPE_2__*,TYPE_3__*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pullup (struct at91_udc*,int) ;
 int stub1 (TYPE_1__*) ;

int usb_gadget_register_driver (struct usb_gadget_driver *driver)
{
 struct at91_udc *udc = &controller;
 int retval;

 if (!driver
   || driver->speed < USB_SPEED_FULL
   || !driver->bind
   || !driver->setup) {
  DBG("bad parameter.\n");
  return -EINVAL;
 }

 if (udc->driver) {
  DBG("UDC already has a gadget driver\n");
  return -EBUSY;
 }

 udc->driver = driver;
 udc->gadget.dev.driver = &driver->driver;
 dev_set_drvdata(&udc->gadget.dev, &driver->driver);
 udc->enabled = 1;
 udc->selfpowered = 1;

 retval = driver->bind(&udc->gadget);
 if (retval) {
  DBG("driver->bind() returned %d\n", retval);
  udc->driver = ((void*)0);
  udc->gadget.dev.driver = ((void*)0);
  dev_set_drvdata(&udc->gadget.dev, ((void*)0));
  udc->enabled = 0;
  udc->selfpowered = 0;
  return retval;
 }

 local_irq_disable();
 pullup(udc, 1);
 local_irq_enable();

 DBG("bound to %s\n", driver->driver.name);
 return 0;
}
