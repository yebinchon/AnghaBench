
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int * chip; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ IRQT_UNBOUND ;
 scalar_t__ WARN_ON (int ) ;
 int dynamic_irq_init_keep_chip_data (int) ;
 int get_nr_hw_irqs () ;
 TYPE_1__* irq_info ;
 struct irq_desc* irq_to_desc (int) ;
 struct irq_desc* irq_to_desc_alloc_node (int,int ) ;
 int no_irq_chip ;
 int nr_irqs ;
 int panic (char*) ;
 int xen_dynamic_chip ;

__attribute__((used)) static int find_unbound_irq(void)
{
 int irq;
 struct irq_desc *desc;
 int start = get_nr_hw_irqs();

 if (start == nr_irqs)
  goto no_irqs;


 for (irq = nr_irqs-1; irq > start; irq--) {
  desc = irq_to_desc(irq);

  if (desc == ((void*)0))
   break;
  if (desc->chip == &no_irq_chip)
   break;
  if (desc->chip != &xen_dynamic_chip)
   continue;
  if (irq_info[irq].type == IRQT_UNBOUND)
   break;
 }

 if (irq == start)
  goto no_irqs;

 desc = irq_to_desc_alloc_node(irq, 0);
 if (WARN_ON(desc == ((void*)0)))
  return -1;

 dynamic_irq_init_keep_chip_data(irq);

 return irq;

no_irqs:
 panic("No available IRQ to bind to: increase nr_irqs!\n");
}
