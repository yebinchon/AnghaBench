
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpwd {TYPE_1__* devs; scalar_t__ broken; } ;
struct TYPE_2__ {int runstatus; scalar_t__ regs; } ;


 int WD_INTR_OFF ;
 scalar_t__ WD_STATUS ;
 int WD_STAT_BSTOP ;
 int WD_S_RUNNING ;
 int cpwd_brokentimer (unsigned long) ;
 int cpwd_readb (scalar_t__) ;
 int cpwd_toggleintr (struct cpwd*,int,int ) ;

__attribute__((used)) static void cpwd_stoptimer(struct cpwd *p, int index)
{
 if (cpwd_readb(p->devs[index].regs + WD_STATUS) & WD_S_RUNNING) {
  cpwd_toggleintr(p, index, WD_INTR_OFF);

  if (p->broken) {
   p->devs[index].runstatus |= WD_STAT_BSTOP;
   cpwd_brokentimer((unsigned long) p);
  }
 }
}
