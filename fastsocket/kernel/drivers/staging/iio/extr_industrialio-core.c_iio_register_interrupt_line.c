
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_1__** interrupts; } ;
struct TYPE_3__ {int line_number; unsigned int irq; struct iio_dev* dev_info; } ;


 int ENOMEM ;
 TYPE_1__* iio_allocate_interrupt () ;
 int iio_interrupt_handler ;
 int request_irq (unsigned int,int *,unsigned long,char const*,TYPE_1__*) ;

int iio_register_interrupt_line(unsigned int irq,
    struct iio_dev *dev_info,
    int line_number,
    unsigned long type,
    const char *name)
{
 int ret;

 dev_info->interrupts[line_number] = iio_allocate_interrupt();
 if (dev_info->interrupts[line_number] == ((void*)0)) {
  ret = -ENOMEM;
  goto error_ret;
 }
 dev_info->interrupts[line_number]->line_number = line_number;
 dev_info->interrupts[line_number]->irq = irq;
 dev_info->interrupts[line_number]->dev_info = dev_info;





 ret = request_irq(irq,
     &iio_interrupt_handler,
     type,
     name,
     dev_info->interrupts[line_number]);

error_ret:
 return ret;
}
