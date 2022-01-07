
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget_driver {int (* unbind ) (TYPE_1__*) ;} ;
struct TYPE_4__ {int * driver; } ;
struct TYPE_3__ {scalar_t__ speed; TYPE_2__ dev; } ;
struct m66592 {struct usb_gadget_driver* driver; TYPE_1__ gadget; int lock; } ;


 int EINVAL ;
 int M66592_INTENB0 ;
 int M66592_URST ;
 int M66592_VBSE ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int device_del (TYPE_2__*) ;
 int disable_controller (struct m66592*) ;
 int init_controller (struct m66592*) ;
 int m66592_bclr (struct m66592*,int,int ) ;
 int m66592_usb_disconnect (struct m66592*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*) ;
 struct m66592* the_controller ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct m66592 *m66592 = the_controller;
 unsigned long flags;

 if (driver != m66592->driver || !driver->unbind)
  return -EINVAL;

 spin_lock_irqsave(&m66592->lock, flags);
 if (m66592->gadget.speed != USB_SPEED_UNKNOWN)
  m66592_usb_disconnect(m66592);
 spin_unlock_irqrestore(&m66592->lock, flags);

 m66592_bclr(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);

 driver->unbind(&m66592->gadget);
 m66592->gadget.dev.driver = ((void*)0);

 init_controller(m66592);
 disable_controller(m66592);

 device_del(&m66592->gadget.dev);
 m66592->driver = ((void*)0);
 return 0;
}
