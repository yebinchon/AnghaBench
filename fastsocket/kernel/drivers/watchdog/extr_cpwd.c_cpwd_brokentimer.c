
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cpwd {TYPE_1__* devs; } ;
struct TYPE_7__ {int expires; } ;
struct TYPE_6__ {int runstatus; } ;


 int WD_BTIMEOUT ;
 int WD_NUMDEVS ;
 int WD_STAT_BSTOP ;
 int add_timer (TYPE_2__*) ;
 int cpwd_resetbrokentimer (struct cpwd*,int) ;
 TYPE_2__ cpwd_timer ;
 int del_timer (TYPE_2__*) ;
 scalar_t__ timer_pending (TYPE_2__*) ;

__attribute__((used)) static void cpwd_brokentimer(unsigned long data)
{
 struct cpwd *p = (struct cpwd *) data;
 int id, tripped = 0;




 if (timer_pending(&cpwd_timer))
  del_timer(&cpwd_timer);

 for (id = 0; id < WD_NUMDEVS; id++) {
  if (p->devs[id].runstatus & WD_STAT_BSTOP) {
   ++tripped;
   cpwd_resetbrokentimer(p, id);
  }
 }

 if (tripped) {

  cpwd_timer.expires = WD_BTIMEOUT;
  add_timer(&cpwd_timer);
 }
}
