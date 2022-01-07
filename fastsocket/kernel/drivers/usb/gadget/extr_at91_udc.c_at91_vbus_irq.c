
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vbus_pin; } ;
struct at91_udc {unsigned int vbus; int gadget; TYPE_1__ board; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int at91_vbus_session (int *,unsigned int) ;
 unsigned int gpio_get_value (int ) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t at91_vbus_irq(int irq, void *_udc)
{
 struct at91_udc *udc = _udc;
 unsigned value;


 udelay(10);
 value = gpio_get_value(udc->board.vbus_pin);
 if (value != udc->vbus)
  at91_vbus_session(&udc->gadget, value);

 return IRQ_HANDLED;
}
