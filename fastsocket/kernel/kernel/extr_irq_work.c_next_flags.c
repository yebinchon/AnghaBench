
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int dummy; } ;



__attribute__((used)) static inline struct irq_work *next_flags(struct irq_work *entry, int flags)
{
 unsigned long next = (unsigned long)entry;
 next |= flags;
 return (struct irq_work *)next;
}
