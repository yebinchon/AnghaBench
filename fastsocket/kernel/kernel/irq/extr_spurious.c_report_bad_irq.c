
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
typedef int irqreturn_t ;


 int __report_bad_irq (unsigned int,struct irq_desc*,int ) ;

__attribute__((used)) static void
report_bad_irq(unsigned int irq, struct irq_desc *desc, irqreturn_t action_ret)
{
 static int count = 100;

 if (count > 0) {
  count--;
  __report_bad_irq(irq, desc, action_ret);
 }
}
