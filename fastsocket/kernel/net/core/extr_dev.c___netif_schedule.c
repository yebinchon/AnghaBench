
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int state; } ;


 int __QDISC_STATE_SCHED ;
 int __netif_reschedule (struct Qdisc*) ;
 int test_and_set_bit (int ,int *) ;

void __netif_schedule(struct Qdisc *q)
{
 if (!test_and_set_bit(__QDISC_STATE_SCHED, &q->state))
  __netif_reschedule(q);
}
