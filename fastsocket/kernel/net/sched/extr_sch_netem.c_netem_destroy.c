
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netem_sched_data {int delay_dist; int qdisc; int watchdog; } ;
struct Qdisc {int dummy; } ;


 int kfree (int ) ;
 int qdisc_destroy (int ) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void netem_destroy(struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);

 qdisc_watchdog_cancel(&q->watchdog);
 qdisc_destroy(q->qdisc);
 kfree(q->delay_dist);
}
