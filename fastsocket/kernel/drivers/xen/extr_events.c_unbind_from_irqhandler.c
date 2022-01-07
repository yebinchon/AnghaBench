
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq (unsigned int,void*) ;
 int unbind_from_irq (unsigned int) ;

void unbind_from_irqhandler(unsigned int irq, void *dev_id)
{
 free_irq(irq, dev_id);
 unbind_from_irq(irq);
}
