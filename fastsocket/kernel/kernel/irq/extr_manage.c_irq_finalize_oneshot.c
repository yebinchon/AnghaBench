
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int status; int lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;} ;


 int IRQ_DISABLED ;
 int IRQ_MASKED ;
 int chip_bus_lock (unsigned int,struct irq_desc*) ;
 int chip_bus_sync_unlock (unsigned int,struct irq_desc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void irq_finalize_oneshot(unsigned int irq, struct irq_desc *desc)
{
 chip_bus_lock(irq, desc);
 spin_lock_irq(&desc->lock);
 if (!(desc->status & IRQ_DISABLED) && (desc->status & IRQ_MASKED)) {
  desc->status &= ~IRQ_MASKED;
  desc->chip->unmask(irq);
 }
 spin_unlock_irq(&desc->lock);
 chip_bus_sync_unlock(irq, desc);
}
