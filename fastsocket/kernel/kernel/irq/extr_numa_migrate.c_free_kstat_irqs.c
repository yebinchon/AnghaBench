
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int * kstat_irqs; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_kstat_irqs(struct irq_desc *old_desc, struct irq_desc *desc)
{
 if (old_desc->kstat_irqs == desc->kstat_irqs)
  return;

 kfree(old_desc->kstat_irqs);
 old_desc->kstat_irqs = ((void*)0);
}
