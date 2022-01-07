
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_1__** interrupts; } ;
struct TYPE_3__ {int irq; } ;


 int flush_scheduled_work () ;
 int free_irq (int ,TYPE_1__*) ;
 int kfree (TYPE_1__*) ;

void iio_unregister_interrupt_line(struct iio_dev *dev_info, int line_number)
{

 flush_scheduled_work();
 free_irq(dev_info->interrupts[line_number]->irq,
   dev_info->interrupts[line_number]);
 kfree(dev_info->interrupts[line_number]);
}
