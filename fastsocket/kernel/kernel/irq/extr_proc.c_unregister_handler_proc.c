
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {TYPE_1__* dir; } ;
struct irq_desc {int dir; } ;
struct TYPE_2__ {int name; } ;


 struct irq_desc* irq_to_desc (unsigned int) ;
 int remove_proc_entry (int ,int ) ;

void unregister_handler_proc(unsigned int irq, struct irqaction *action)
{
 if (action->dir) {
  struct irq_desc *desc = irq_to_desc(irq);

  remove_proc_entry(action->dir->name, desc->dir);
 }
}
