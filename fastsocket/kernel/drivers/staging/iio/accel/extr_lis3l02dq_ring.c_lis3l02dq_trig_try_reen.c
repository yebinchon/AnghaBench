
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lis3l02dq_state {int inter; TYPE_1__* us; } ;
struct iio_trigger {struct lis3l02dq_state* private_data; } ;
struct TYPE_2__ {int irq; } ;


 int EAGAIN ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 scalar_t__ gpio_get_value (int ) ;
 int irq_to_gpio (int ) ;

__attribute__((used)) static int lis3l02dq_trig_try_reen(struct iio_trigger *trig)
{
 struct lis3l02dq_state *st = trig->private_data;
 enable_irq(st->us->irq);

 if (gpio_get_value(irq_to_gpio(st->us->irq)))
  if (st->inter == 0) {

   disable_irq_nosync(st->us->irq);
   if (st->inter == 1) {


    enable_irq(st->us->irq);
    return 0;
   }
   return -EAGAIN;
  }

 return 0;
}
