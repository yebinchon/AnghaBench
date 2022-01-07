
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int * affinity_notify; } ;


 scalar_t__ WARN_ON (int *) ;
 int __free_irq (unsigned int,void*) ;
 int chip_bus_lock (unsigned int,struct irq_desc*) ;
 int chip_bus_sync_unlock (unsigned int,struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kfree (int ) ;

void free_irq(unsigned int irq, void *dev_id)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (!desc)
  return;






 chip_bus_lock(irq, desc);
 kfree(__free_irq(irq, dev_id));
 chip_bus_sync_unlock(irq, desc);
}
