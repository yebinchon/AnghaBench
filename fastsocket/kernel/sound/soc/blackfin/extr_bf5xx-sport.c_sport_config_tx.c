
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sport_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int tcr1; int rcr1; unsigned int tcr2; unsigned int tclkdiv; unsigned int tfsdiv; } ;


 int EBUSY ;
 int RSPEN ;
 int SSYNC () ;
 int TSPEN ;

int sport_config_tx(struct sport_device *sport, unsigned int tcr1,
  unsigned int tcr2, unsigned int clkdiv, unsigned int fsdiv)
{
 if ((sport->regs->tcr1 & TSPEN) || (sport->regs->rcr1 & RSPEN))
  return -EBUSY;

 sport->regs->tcr1 = tcr1;
 sport->regs->tcr2 = tcr2;
 sport->regs->tclkdiv = clkdiv;
 sport->regs->tfsdiv = fsdiv;

 SSYNC();

 return 0;
}
