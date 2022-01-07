
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
struct at91_udc {struct usb_gadget_driver* driver; TYPE_2__ gadget; scalar_t__ enabled; } ;


 int AT91_UDP_IDR ;
 int DBG (char*,int ) ;
 int EINVAL ;
 int at91_udp_write (struct at91_udc*,int ,int ) ;
 struct at91_udc controller ;
 int dev_set_drvdata (TYPE_3__*,int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pullup (struct at91_udc*,int ) ;
 int stub1 (TYPE_2__*) ;

int usb_gadget_unregister_driver (struct usb_gadget_driver *driver)
{
 struct at91_udc *udc = &controller;

 if (!driver || driver != udc->driver || !driver->unbind)
  return -EINVAL;

 local_irq_disable();
 udc->enabled = 0;
 at91_udp_write(udc, AT91_UDP_IDR, ~0);
 pullup(udc, 0);
 local_irq_enable();

 driver->unbind(&udc->gadget);
 udc->gadget.dev.driver = ((void*)0);
 dev_set_drvdata(&udc->gadget.dev, ((void*)0));
 udc->driver = ((void*)0);

 DBG("unbound from %s\n", driver->driver.name);
 return 0;
}
