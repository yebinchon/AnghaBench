
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * driver; } ;
struct TYPE_7__ {TYPE_1__ dev; int speed; } ;
struct usba_udc {int pclk; int hclk; struct usb_gadget_driver* driver; TYPE_3__ gadget; int lock; int vbus_pin; int pdev; } ;
struct TYPE_6__ {int name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int (* unbind ) (TYPE_3__*) ;int (* disconnect ) (TYPE_3__*) ;} ;


 int CTRL ;
 int DBG (int ,char*,int ) ;
 int DBG_GADGET ;
 int EINVAL ;
 int ENODEV ;
 int USBA_DISABLE_MASK ;
 int USB_SPEED_UNKNOWN ;
 int clk_disable (int ) ;
 int disable_irq (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 int reset_all_endpoints (struct usba_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 struct usba_udc the_udc ;
 int toggle_bias (int ) ;
 int usba_writel (struct usba_udc*,int ,int ) ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct usba_udc *udc = &the_udc;
 unsigned long flags;

 if (!udc->pdev)
  return -ENODEV;
 if (driver != udc->driver || !driver->unbind)
  return -EINVAL;

 if (gpio_is_valid(udc->vbus_pin))
  disable_irq(gpio_to_irq(udc->vbus_pin));

 spin_lock_irqsave(&udc->lock, flags);
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 reset_all_endpoints(udc);
 spin_unlock_irqrestore(&udc->lock, flags);


 toggle_bias(0);
 usba_writel(udc, CTRL, USBA_DISABLE_MASK);

 if (udc->driver->disconnect)
  udc->driver->disconnect(&udc->gadget);

 driver->unbind(&udc->gadget);
 udc->gadget.dev.driver = ((void*)0);
 udc->driver = ((void*)0);

 clk_disable(udc->hclk);
 clk_disable(udc->pclk);

 DBG(DBG_GADGET, "unregistered driver `%s'\n", driver->driver.name);

 return 0;
}
