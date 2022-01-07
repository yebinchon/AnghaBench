
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int NO_IRQ ;
 int irq_of_parse_and_map (struct device_node*,int ) ;

__attribute__((used)) static void get_irq(struct device_node * np, int *irqptr)
{
 if (np)
  *irqptr = irq_of_parse_and_map(np, 0);
 else
  *irqptr = NO_IRQ;
}
