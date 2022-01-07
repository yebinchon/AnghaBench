
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lx6464es {int dummy; } ;


 int lx_irq_set (struct lx6464es*,int ) ;
 int snd_printdd (char*) ;

void lx_irq_disable(struct lx6464es *chip)
{
 snd_printdd("->lx_irq_disable\n");
 lx_irq_set(chip, 0);
}
