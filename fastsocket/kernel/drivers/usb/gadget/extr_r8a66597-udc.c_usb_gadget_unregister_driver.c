
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* unbind ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; int dev; } ;
struct r8a66597 {struct usb_gadget_driver* driver; TYPE_1__ gadget; int lock; } ;


 int EINVAL ;
 int INTENB0 ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int VBSE ;
 int device_del (int *) ;
 int disable_controller (struct r8a66597*) ;
 int init_controller (struct r8a66597*) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_usb_disconnect (struct r8a66597*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*) ;
 struct r8a66597* the_controller ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct r8a66597 *r8a66597 = the_controller;
 unsigned long flags;

 if (driver != r8a66597->driver || !driver->unbind)
  return -EINVAL;

 spin_lock_irqsave(&r8a66597->lock, flags);
 if (r8a66597->gadget.speed != USB_SPEED_UNKNOWN)
  r8a66597_usb_disconnect(r8a66597);
 spin_unlock_irqrestore(&r8a66597->lock, flags);

 r8a66597_bclr(r8a66597, VBSE, INTENB0);

 driver->unbind(&r8a66597->gadget);

 init_controller(r8a66597);
 disable_controller(r8a66597);

 device_del(&r8a66597->gadget.dev);
 r8a66597->driver = ((void*)0);
 return 0;
}
