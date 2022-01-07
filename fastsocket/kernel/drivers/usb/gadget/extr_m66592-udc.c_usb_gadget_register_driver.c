
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bus; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_2__*) ;TYPE_1__ driver; int setup; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_3__ dev; } ;
struct m66592 {int old_vbus; TYPE_2__ gadget; struct usb_gadget_driver* driver; int timer; int scount; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int M66592_INTENB0 ;
 int M66592_INTSTS0 ;
 int M66592_MAX_SAMPLING ;
 int M66592_URST ;
 int M66592_VBSE ;
 int M66592_VBSTS ;
 scalar_t__ USB_SPEED_HIGH ;
 int device_add (TYPE_3__*) ;
 int device_del (TYPE_3__*) ;
 scalar_t__ jiffies ;
 int m66592_bset (struct m66592*,int,int ) ;
 int m66592_read (struct m66592*,int ) ;
 int m66592_start_xclock (struct m66592*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int pr_err (char*,int) ;
 int stub1 (TYPE_2__*) ;
 struct m66592* the_controller ;

int usb_gadget_register_driver(struct usb_gadget_driver *driver)
{
 struct m66592 *m66592 = the_controller;
 int retval;

 if (!driver
   || driver->speed != USB_SPEED_HIGH
   || !driver->bind
   || !driver->setup)
  return -EINVAL;
 if (!m66592)
  return -ENODEV;
 if (m66592->driver)
  return -EBUSY;


 driver->driver.bus = ((void*)0);
 m66592->driver = driver;
 m66592->gadget.dev.driver = &driver->driver;

 retval = device_add(&m66592->gadget.dev);
 if (retval) {
  pr_err("device_add error (%d)\n", retval);
  goto error;
 }

 retval = driver->bind (&m66592->gadget);
 if (retval) {
  pr_err("bind to driver error (%d)\n", retval);
  device_del(&m66592->gadget.dev);
  goto error;
 }

 m66592_bset(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);
 if (m66592_read(m66592, M66592_INTSTS0) & M66592_VBSTS) {
  m66592_start_xclock(m66592);

  m66592->old_vbus = m66592_read(m66592,
      M66592_INTSTS0) & M66592_VBSTS;
  m66592->scount = M66592_MAX_SAMPLING;
  mod_timer(&m66592->timer, jiffies + msecs_to_jiffies(50));
 }

 return 0;

error:
 m66592->driver = ((void*)0);
 m66592->gadget.dev.driver = ((void*)0);

 return retval;
}
