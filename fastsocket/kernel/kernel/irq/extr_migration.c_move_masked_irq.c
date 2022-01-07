
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int status; int pending_mask; int affinity; TYPE_1__* chip; int lock; } ;
struct TYPE_2__ {int (* set_affinity ) (int,int ) ;} ;


 scalar_t__ CHECK_IRQ_PER_CPU (int) ;
 int IRQ_MOVE_PENDING ;
 int WARN_ON (int) ;
 int assert_spin_locked (int *) ;
 int cpu_online_mask ;
 scalar_t__ cpumask_any_and (int ,int ) ;
 int cpumask_clear (int ) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_empty (int ) ;
 int irq_set_thread_affinity (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (int) ;
 scalar_t__ likely (int) ;
 scalar_t__ nr_cpu_ids ;
 int stub1 (int,int ) ;
 scalar_t__ unlikely (int ) ;

void move_masked_irq(int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (likely(!(desc->status & IRQ_MOVE_PENDING)))
  return;




 if (CHECK_IRQ_PER_CPU(desc->status)) {
  WARN_ON(1);
  return;
 }

 desc->status &= ~IRQ_MOVE_PENDING;

 if (unlikely(cpumask_empty(desc->pending_mask)))
  return;

 if (!desc->chip->set_affinity)
  return;

 assert_spin_locked(&desc->lock);
 if (likely(cpumask_any_and(desc->pending_mask, cpu_online_mask)
     < nr_cpu_ids))
  if (!desc->chip->set_affinity(irq, desc->pending_mask)) {
   cpumask_copy(desc->affinity, desc->pending_mask);
   irq_set_thread_affinity(desc);
  }

 cpumask_clear(desc->pending_mask);
}
