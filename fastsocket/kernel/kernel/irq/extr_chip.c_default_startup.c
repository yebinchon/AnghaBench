
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* enable ) (unsigned int) ;} ;


 struct irq_desc* irq_to_desc (unsigned int) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static unsigned int default_startup(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 desc->chip->enable(irq);
 return 0;
}
