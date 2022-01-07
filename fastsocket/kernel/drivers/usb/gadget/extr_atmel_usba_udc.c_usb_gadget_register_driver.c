
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct usba_udc {int devstatus; scalar_t__ vbus_prev; TYPE_3__ gadget; struct usb_gadget_driver* driver; int lock; int vbus_pin; int hclk; int pclk; int pdev; } ;
struct TYPE_4__ {int name; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_3__*) ;TYPE_1__ driver; } ;


 int CTRL ;
 int DBG (int ,char*,int ,...) ;
 int DBG_ERR ;
 int DBG_GADGET ;
 int EBUSY ;
 int ENODEV ;
 int INT_ENB ;
 int USBA_ENABLE_MASK ;
 int USBA_END_OF_RESET ;
 int USB_DEVICE_SELF_POWERED ;
 int clk_enable (int ) ;
 int enable_irq (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 struct usba_udc the_udc ;
 int toggle_bias (int) ;
 int usba_writel (struct usba_udc*,int ,int ) ;
 scalar_t__ vbus_is_present (struct usba_udc*) ;

int usb_gadget_register_driver(struct usb_gadget_driver *driver)
{
 struct usba_udc *udc = &the_udc;
 unsigned long flags;
 int ret;

 if (!udc->pdev)
  return -ENODEV;

 spin_lock_irqsave(&udc->lock, flags);
 if (udc->driver) {
  spin_unlock_irqrestore(&udc->lock, flags);
  return -EBUSY;
 }

 udc->devstatus = 1 << USB_DEVICE_SELF_POWERED;
 udc->driver = driver;
 udc->gadget.dev.driver = &driver->driver;
 spin_unlock_irqrestore(&udc->lock, flags);

 clk_enable(udc->pclk);
 clk_enable(udc->hclk);

 ret = driver->bind(&udc->gadget);
 if (ret) {
  DBG(DBG_ERR, "Could not bind to driver %s: error %d\n",
   driver->driver.name, ret);
  goto err_driver_bind;
 }

 DBG(DBG_GADGET, "registered driver `%s'\n", driver->driver.name);

 udc->vbus_prev = 0;
 if (gpio_is_valid(udc->vbus_pin))
  enable_irq(gpio_to_irq(udc->vbus_pin));


 spin_lock_irqsave(&udc->lock, flags);
 if (vbus_is_present(udc) && udc->vbus_prev == 0) {
  toggle_bias(1);
  usba_writel(udc, CTRL, USBA_ENABLE_MASK);
  usba_writel(udc, INT_ENB, USBA_END_OF_RESET);
 }
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;

err_driver_bind:
 udc->driver = ((void*)0);
 udc->gadget.dev.driver = ((void*)0);
 return ret;
}
