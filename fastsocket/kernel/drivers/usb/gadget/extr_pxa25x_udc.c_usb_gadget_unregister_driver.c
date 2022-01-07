
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
struct pxa25x_udc {TYPE_2__ gadget; struct usb_gadget_driver* driver; scalar_t__ transceiver; scalar_t__ pullup; } ;


 int DMSG (char*,int ) ;
 int EINVAL ;
 int ENODEV ;
 int device_del (TYPE_3__*) ;
 int dump_state (struct pxa25x_udc*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int otg_set_peripheral (scalar_t__,int *) ;
 int pullup (struct pxa25x_udc*) ;
 int stop_activity (struct pxa25x_udc*,struct usb_gadget_driver*) ;
 int stub1 (TYPE_2__*) ;
 struct pxa25x_udc* the_controller ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct pxa25x_udc *dev = the_controller;

 if (!dev)
  return -ENODEV;
 if (!driver || driver != dev->driver || !driver->unbind)
  return -EINVAL;

 local_irq_disable();
 dev->pullup = 0;
 pullup(dev);
 stop_activity(dev, driver);
 local_irq_enable();

 if (dev->transceiver)
  (void) otg_set_peripheral(dev->transceiver, ((void*)0));

 driver->unbind(&dev->gadget);
 dev->gadget.dev.driver = ((void*)0);
 dev->driver = ((void*)0);

 device_del (&dev->gadget.dev);

 DMSG("unregistered gadget driver '%s'\n", driver->driver.name);
 dump_state(dev);
 return 0;
}
