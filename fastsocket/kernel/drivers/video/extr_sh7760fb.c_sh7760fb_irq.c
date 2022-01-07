
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (struct completion*) ;

__attribute__((used)) static irqreturn_t sh7760fb_irq(int irq, void *data)
{
 struct completion *c = data;

 complete(c);

 return IRQ_HANDLED;
}
