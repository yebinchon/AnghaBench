
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netem_sched_data {int watchdog; int qdisc; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void netem_reset(struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);

 qdisc_reset(q->qdisc);
 sch->q.qlen = 0;
 qdisc_watchdog_cancel(&q->watchdog);
}
