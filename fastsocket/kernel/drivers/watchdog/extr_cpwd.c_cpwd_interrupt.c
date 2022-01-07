
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpwd {int lock; TYPE_1__* devs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int runstatus; } ;


 int IRQ_HANDLED ;
 size_t WD0_ID ;
 int WD_STAT_SVCD ;
 int cpwd_stoptimer (struct cpwd*,size_t) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static irqreturn_t cpwd_interrupt(int irq, void *dev_id)
{
 struct cpwd *p = dev_id;




 spin_lock_irq(&p->lock);

 cpwd_stoptimer(p, WD0_ID);
 p->devs[WD0_ID].runstatus |= WD_STAT_SVCD;

 spin_unlock_irq(&p->lock);

 return IRQ_HANDLED;
}
