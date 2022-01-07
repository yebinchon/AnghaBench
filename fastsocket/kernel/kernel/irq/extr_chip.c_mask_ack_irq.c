
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* ack ) (int) ;int (* mask ) (int) ;int (* mask_ack ) (int) ;} ;


 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;

__attribute__((used)) static inline void mask_ack_irq(struct irq_desc *desc, int irq)
{
 if (desc->chip->mask_ack)
  desc->chip->mask_ack(irq);
 else {
  desc->chip->mask(irq);
  if (desc->chip->ack)
   desc->chip->ack(irq);
 }
}
