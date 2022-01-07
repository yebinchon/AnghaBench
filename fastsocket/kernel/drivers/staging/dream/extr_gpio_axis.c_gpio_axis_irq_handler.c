
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_axis_state {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int gpio_event_update_axis (struct gpio_axis_state*,int) ;

__attribute__((used)) static irqreturn_t gpio_axis_irq_handler(int irq, void *dev_id)
{
 struct gpio_axis_state *as = dev_id;
 gpio_event_update_axis(as, 1);
 return IRQ_HANDLED;
}
