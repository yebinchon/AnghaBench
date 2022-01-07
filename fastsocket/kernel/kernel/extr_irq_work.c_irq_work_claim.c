
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {struct irq_work* next; } ;


 int IRQ_WORK_FLAGS ;
 unsigned long IRQ_WORK_PENDING ;
 struct irq_work* cmpxchg (struct irq_work**,struct irq_work*,struct irq_work*) ;
 struct irq_work* next_flags (struct irq_work*,int ) ;

__attribute__((used)) static bool irq_work_claim(struct irq_work *entry)
{
 struct irq_work *next, *nflags;

 do {
  next = entry->next;
  if ((unsigned long)next & IRQ_WORK_PENDING)
   return 0;
  nflags = next_flags(next, IRQ_WORK_FLAGS);
 } while (cmpxchg(&entry->next, next, nflags) != next);

 return 1;
}
