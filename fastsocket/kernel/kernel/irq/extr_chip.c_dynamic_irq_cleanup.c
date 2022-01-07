
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dynamic_irq_cleanup_x (unsigned int,int) ;

void dynamic_irq_cleanup(unsigned int irq)
{
 dynamic_irq_cleanup_x(irq, 0);
}
