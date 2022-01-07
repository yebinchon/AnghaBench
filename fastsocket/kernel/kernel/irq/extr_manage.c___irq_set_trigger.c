
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {unsigned long status; struct irq_chip* chip; } ;
struct irq_chip {int (* set_type ) (unsigned int,unsigned long) ;scalar_t__ name; } ;


 unsigned long IRQ_LEVEL ;
 unsigned long IRQ_TYPE_LEVEL_HIGH ;
 unsigned long IRQ_TYPE_LEVEL_LOW ;
 unsigned long IRQ_TYPE_SENSE_MASK ;
 int pr_debug (char*,unsigned int,char*) ;
 int pr_err (char*,int,unsigned int,int (*) (unsigned int,unsigned long)) ;
 int stub1 (unsigned int,unsigned long) ;

int __irq_set_trigger(struct irq_desc *desc, unsigned int irq,
  unsigned long flags)
{
 int ret;
 struct irq_chip *chip = desc->chip;

 if (!chip || !chip->set_type) {




  pr_debug("No set_type function for IRQ %d (%s)\n", irq,
    chip ? (chip->name ? : "unknown") : "unknown");
  return 0;
 }


 ret = chip->set_type(irq, flags);

 if (ret)
  pr_err("setting trigger mode %d for irq %u failed (%pF)\n",
    (int)flags, irq, chip->set_type);
 else {
  if (flags & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
   flags |= IRQ_LEVEL;

  desc->status &= ~(IRQ_LEVEL | IRQ_TYPE_SENSE_MASK);
  desc->status |= flags;
 }

 return ret;
}
