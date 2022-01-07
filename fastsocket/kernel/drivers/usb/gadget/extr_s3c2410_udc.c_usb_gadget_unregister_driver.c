
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct usb_gadget_driver {int (* unbind ) (TYPE_2__*) ;TYPE_1__ driver; } ;
struct TYPE_4__ {int dev; } ;
struct s3c2410_udc {struct usb_gadget_driver* driver; TYPE_2__ gadget; } ;


 int DEBUG_NORMAL ;
 int EINVAL ;
 int ENODEV ;
 int device_del (int *) ;
 int dprintk (int ,char*,int ) ;
 int s3c2410_udc_disable (struct s3c2410_udc*) ;
 int stub1 (TYPE_2__*) ;
 struct s3c2410_udc* the_controller ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct s3c2410_udc *udc = the_controller;

 if (!udc)
  return -ENODEV;

 if (!driver || driver != udc->driver || !driver->unbind)
  return -EINVAL;

 dprintk(DEBUG_NORMAL,"usb_gadget_register_driver() '%s'\n",
  driver->driver.name);

 driver->unbind(&udc->gadget);

 device_del(&udc->gadget.dev);
 udc->driver = ((void*)0);


 s3c2410_udc_disable(udc);

 return 0;
}
