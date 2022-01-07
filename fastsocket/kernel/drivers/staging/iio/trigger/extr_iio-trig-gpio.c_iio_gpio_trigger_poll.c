
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_trigger_poll (void*) ;

__attribute__((used)) static irqreturn_t iio_gpio_trigger_poll(int irq, void *private)
{
 iio_trigger_poll(private);
 return IRQ_HANDLED;
}
