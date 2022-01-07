
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int state; } ;


 int __QDISC_STATE_RUNNING ;
 int __netif_schedule (struct Qdisc*) ;
 int clear_bit (int ,int *) ;
 unsigned long jiffies ;
 scalar_t__ need_resched () ;
 scalar_t__ qdisc_restart (struct Qdisc*) ;

void __qdisc_run(struct Qdisc *q)
{
 unsigned long start_time = jiffies;

 while (qdisc_restart(q)) {





  if (need_resched() || jiffies != start_time) {
   __netif_schedule(q);
   break;
  }
 }

 clear_bit(__QDISC_STATE_RUNNING, &q->state);
}
