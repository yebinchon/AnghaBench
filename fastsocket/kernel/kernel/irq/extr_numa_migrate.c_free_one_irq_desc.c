
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int arch_free_chip_data (struct irq_desc*,struct irq_desc*) ;
 int free_desc_masks (struct irq_desc*,struct irq_desc*) ;
 int free_kstat_irqs (struct irq_desc*,struct irq_desc*) ;

__attribute__((used)) static void free_one_irq_desc(struct irq_desc *old_desc, struct irq_desc *desc)
{
 free_kstat_irqs(old_desc, desc);
 free_desc_masks(old_desc, desc);
 arch_free_chip_data(old_desc, desc);
}
