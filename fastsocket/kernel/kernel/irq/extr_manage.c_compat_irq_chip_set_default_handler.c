
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int * handle_irq; } ;


 int handle_bad_irq ;

void compat_irq_chip_set_default_handler(struct irq_desc *desc)
{





 if (desc->handle_irq == &handle_bad_irq)
  desc->handle_irq = ((void*)0);
}
