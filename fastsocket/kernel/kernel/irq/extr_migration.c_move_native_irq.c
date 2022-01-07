
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int status; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (int) ;int (* mask ) (int) ;} ;


 int IRQ_DISABLED ;
 int IRQ_MOVE_PENDING ;
 struct irq_desc* irq_to_desc (int) ;
 scalar_t__ likely (int) ;
 int move_masked_irq (int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 scalar_t__ unlikely (int) ;

void move_native_irq(int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (likely(!(desc->status & IRQ_MOVE_PENDING)))
  return;

 if (unlikely(desc->status & IRQ_DISABLED))
  return;

 desc->chip->mask(irq);
 move_masked_irq(irq);
 desc->chip->unmask(irq);
}
