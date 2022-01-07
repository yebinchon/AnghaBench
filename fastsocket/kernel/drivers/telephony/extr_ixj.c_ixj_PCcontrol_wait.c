
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pcontrolwaitfail; int pcontrolwait; } ;
typedef TYPE_1__ IXJ ;


 int IsPCControlReady (TYPE_1__*) ;
 int hertz ;
 int ixj_perfmon (int ) ;
 int jiffies ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int ixj_PCcontrol_wait(IXJ *j)
{
 unsigned long jif;

 jif = jiffies + ((60 * hertz) / 100);
 while (!IsPCControlReady(j)) {
  ixj_perfmon(j->pcontrolwait);
  if (time_after(jiffies, jif)) {
   ixj_perfmon(j->pcontrolwaitfail);
   return -1;
  }
 }
 return 0;
}
