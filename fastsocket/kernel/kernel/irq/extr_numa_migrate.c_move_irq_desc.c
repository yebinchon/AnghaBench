
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ irq; int node; } ;


 scalar_t__ NR_IRQS_LEGACY ;
 struct irq_desc* __real_move_irq_desc (struct irq_desc*,int) ;

struct irq_desc *move_irq_desc(struct irq_desc *desc, int node)
{

 if (desc->irq < NR_IRQS_LEGACY || node == -1)
  return desc;

 if (desc->node != node)
  desc = __real_move_irq_desc(desc, node);

 return desc;
}
