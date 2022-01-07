
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int name; int * bus; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_5__*) ;TYPE_3__ driver; int setup; int disconnect; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_6__ {TYPE_3__* driver; } ;
struct TYPE_10__ {int speed; int name; TYPE_1__ dev; } ;
struct TYPE_9__ {TYPE_5__ gadget; int dev; int ep0_dir; int ep0_state; int usb_state; TYPE_2__* usb_regs; struct usb_gadget_driver* driver; int lock; } ;
struct TYPE_7__ {int usb_usbmr; int usb_usber; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int USB_DIR_OUT ;
 int USB_E_DEFAULT_DEVICE ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 int USB_STATE_ATTACHED ;
 int WAIT_FOR_SETUP ;
 int dev_err (int ,char*,int ,int) ;
 int dev_info (int ,char*,int ,int ) ;
 int out_be16 (int *,int) ;
 int qe_usb_enable () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_5__*) ;
 TYPE_4__* udc_controller ;

int usb_gadget_register_driver(struct usb_gadget_driver *driver)
{
 int retval;
 unsigned long flags = 0;


 if (!udc_controller)
  return -ENODEV;

 if (!driver || (driver->speed != USB_SPEED_FULL
   && driver->speed != USB_SPEED_HIGH)
   || !driver->bind || !driver->disconnect
   || !driver->setup)
  return -EINVAL;

 if (udc_controller->driver)
  return -EBUSY;


 spin_lock_irqsave(&udc_controller->lock, flags);

 driver->driver.bus = ((void*)0);

 udc_controller->driver = driver;
 udc_controller->gadget.dev.driver = &driver->driver;
 udc_controller->gadget.speed = (enum usb_device_speed)(driver->speed);
 spin_unlock_irqrestore(&udc_controller->lock, flags);

 retval = driver->bind(&udc_controller->gadget);
 if (retval) {
  dev_err(udc_controller->dev, "bind to %s --> %d",
    driver->driver.name, retval);
  udc_controller->gadget.dev.driver = ((void*)0);
  udc_controller->driver = ((void*)0);
  return retval;
 }


 qe_usb_enable();

 out_be16(&udc_controller->usb_regs->usb_usber, 0xffff);
 out_be16(&udc_controller->usb_regs->usb_usbmr, USB_E_DEFAULT_DEVICE);
 udc_controller->usb_state = USB_STATE_ATTACHED;
 udc_controller->ep0_state = WAIT_FOR_SETUP;
 udc_controller->ep0_dir = USB_DIR_OUT;
 dev_info(udc_controller->dev, "%s bind to driver %s \n",
  udc_controller->gadget.name, driver->driver.name);
 return 0;
}
