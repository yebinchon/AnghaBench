
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int speed; } ;
struct usba_udc {int vbus_prev; int lock; TYPE_2__ gadget; TYPE_1__* driver; int vbus_pin; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int (* disconnect ) (TYPE_2__*) ;} ;


 int CTRL ;
 int INT_ENB ;
 int IRQ_HANDLED ;
 int USBA_DISABLE_MASK ;
 int USBA_ENABLE_MASK ;
 int USBA_END_OF_RESET ;
 int USB_SPEED_UNKNOWN ;
 int gpio_get_value (int ) ;
 int reset_all_endpoints (struct usba_udc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 int toggle_bias (int) ;
 int udelay (int) ;
 int usba_writel (struct usba_udc*,int ,int ) ;

__attribute__((used)) static irqreturn_t usba_vbus_irq(int irq, void *devid)
{
 struct usba_udc *udc = devid;
 int vbus;


 udelay(10);

 spin_lock(&udc->lock);


 if (!udc->driver)
  goto out;

 vbus = gpio_get_value(udc->vbus_pin);
 if (vbus != udc->vbus_prev) {
  if (vbus) {
   toggle_bias(1);
   usba_writel(udc, CTRL, USBA_ENABLE_MASK);
   usba_writel(udc, INT_ENB, USBA_END_OF_RESET);
  } else {
   udc->gadget.speed = USB_SPEED_UNKNOWN;
   reset_all_endpoints(udc);
   toggle_bias(0);
   usba_writel(udc, CTRL, USBA_DISABLE_MASK);
   if (udc->driver->disconnect) {
    spin_unlock(&udc->lock);
    udc->driver->disconnect(&udc->gadget);
    spin_lock(&udc->lock);
   }
  }
  udc->vbus_prev = vbus;
 }

out:
 spin_unlock(&udc->lock);

 return IRQ_HANDLED;
}
