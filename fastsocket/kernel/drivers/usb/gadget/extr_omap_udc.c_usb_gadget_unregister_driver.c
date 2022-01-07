
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int (* unbind ) (TYPE_5__*) ;} ;
struct TYPE_8__ {int * driver; } ;
struct TYPE_11__ {TYPE_1__ dev; } ;
struct TYPE_10__ {int * dc_clk; struct usb_gadget_driver* driver; TYPE_5__ gadget; int lock; scalar_t__ transceiver; } ;


 int DBG (char*,int ) ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ machine_without_vbus_sense () ;
 int omap_udc_enable_clock (int) ;
 int omap_vbus_session (TYPE_5__*,int ) ;
 int otg_set_peripheral (scalar_t__,int *) ;
 int pullup_disable (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_5__*) ;
 TYPE_3__* udc ;
 int udc_quiesce (TYPE_3__*) ;

int usb_gadget_unregister_driver (struct usb_gadget_driver *driver)
{
 unsigned long flags;
 int status = -ENODEV;

 if (!udc)
  return -ENODEV;
 if (!driver || driver != udc->driver || !driver->unbind)
  return -EINVAL;

 if (udc->dc_clk != ((void*)0))
  omap_udc_enable_clock(1);

 if (machine_without_vbus_sense())
  omap_vbus_session(&udc->gadget, 0);

 if (udc->transceiver)
  (void) otg_set_peripheral(udc->transceiver, ((void*)0));
 else
  pullup_disable(udc);

 spin_lock_irqsave(&udc->lock, flags);
 udc_quiesce(udc);
 spin_unlock_irqrestore(&udc->lock, flags);

 driver->unbind(&udc->gadget);
 udc->gadget.dev.driver = ((void*)0);
 udc->driver = ((void*)0);

 if (udc->dc_clk != ((void*)0))
  omap_udc_enable_clock(0);
 DBG("unregistered driver '%s'\n", driver->driver.name);
 return status;
}
