
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct usb_gadget_driver {TYPE_1__ driver; int (* unbind ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int dev; } ;
struct pxa_udc {scalar_t__ transceiver; int dev; TYPE_2__ gadget; struct usb_gadget_driver* driver; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_info (int ,char*,int ) ;
 int device_del (int *) ;
 int dplus_pullup (struct pxa_udc*,int ) ;
 int otg_set_peripheral (scalar_t__,int *) ;
 int stop_activity (struct pxa_udc*,struct usb_gadget_driver*) ;
 int stub1 (TYPE_2__*) ;
 struct pxa_udc* the_controller ;
 int udc_disable (struct pxa_udc*) ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct pxa_udc *udc = the_controller;

 if (!udc)
  return -ENODEV;
 if (!driver || driver != udc->driver || !driver->unbind)
  return -EINVAL;

 stop_activity(udc, driver);
 udc_disable(udc);
 dplus_pullup(udc, 0);

 driver->unbind(&udc->gadget);
 udc->driver = ((void*)0);

 device_del(&udc->gadget.dev);
 dev_info(udc->dev, "unregistered gadget driver '%s'\n",
   driver->driver.name);

 if (udc->transceiver)
  return otg_set_peripheral(udc->transceiver, ((void*)0));
 return 0;
}
