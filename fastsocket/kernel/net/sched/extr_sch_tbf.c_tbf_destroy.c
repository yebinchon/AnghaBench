
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbf_sched_data {int qdisc; scalar_t__ R_tab; scalar_t__ P_tab; int watchdog; } ;
struct Qdisc {int dummy; } ;


 int qdisc_destroy (int ) ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put_rtab (scalar_t__) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void tbf_destroy(struct Qdisc *sch)
{
 struct tbf_sched_data *q = qdisc_priv(sch);

 qdisc_watchdog_cancel(&q->watchdog);

 if (q->P_tab)
  qdisc_put_rtab(q->P_tab);
 if (q->R_tab)
  qdisc_put_rtab(q->R_tab);

 qdisc_destroy(q->qdisc);
}
