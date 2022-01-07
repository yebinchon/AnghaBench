
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {scalar_t__ next; } ;


 unsigned long IRQ_WORK_FLAGS ;

__attribute__((used)) static inline struct irq_work *irq_work_next(struct irq_work *entry)
{
 unsigned long next = (unsigned long)entry->next;
 next &= ~IRQ_WORK_FLAGS;
 return (struct irq_work *)next;
}
