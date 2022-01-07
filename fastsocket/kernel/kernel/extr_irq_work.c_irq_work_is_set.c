
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {scalar_t__ next; } ;



__attribute__((used)) static inline bool irq_work_is_set(struct irq_work *entry, int flags)
{
 return (unsigned long)entry->next & flags;
}
