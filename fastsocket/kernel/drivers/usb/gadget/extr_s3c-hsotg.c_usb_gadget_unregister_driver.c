
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int (* unbind ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int dev; int speed; } ;
struct s3c_hsotg {int dev; TYPE_3__ gadget; struct usb_gadget_driver* driver; TYPE_1__* eps; } ;
struct TYPE_4__ {int ep; } ;


 int EINVAL ;
 int ENODEV ;
 int S3C_HSOTG_EPS ;
 int USB_SPEED_UNKNOWN ;
 int call_gadget (struct s3c_hsotg*,int ) ;
 int dev_info (int ,char*,int ) ;
 int device_del (int *) ;
 int disconnect ;
 struct s3c_hsotg* our_hsotg ;
 int s3c_hsotg_ep_disable (int *) ;
 int stub1 (TYPE_3__*) ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct s3c_hsotg *hsotg = our_hsotg;
 int ep;

 if (!hsotg)
  return -ENODEV;

 if (!driver || driver != hsotg->driver || !driver->unbind)
  return -EINVAL;


 for (ep = 0; ep < S3C_HSOTG_EPS; ep++)
  s3c_hsotg_ep_disable(&hsotg->eps[ep].ep);

 call_gadget(hsotg, disconnect);

 driver->unbind(&hsotg->gadget);
 hsotg->driver = ((void*)0);
 hsotg->gadget.speed = USB_SPEED_UNKNOWN;

 device_del(&hsotg->gadget.dev);

 dev_info(hsotg->dev, "unregistered gadget driver '%s'\n",
   driver->driver.name);

 return 0;
}
