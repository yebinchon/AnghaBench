
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbf_sched_data {int * qdisc; int watchdog; int t_c; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 int noop_qdisc ;
 int psched_get_time () ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int tbf_change (struct Qdisc*,struct nlattr*) ;

__attribute__((used)) static int tbf_init(struct Qdisc* sch, struct nlattr *opt)
{
 struct tbf_sched_data *q = qdisc_priv(sch);

 if (opt == ((void*)0))
  return -EINVAL;

 q->t_c = psched_get_time();
 qdisc_watchdog_init(&q->watchdog, sch);
 q->qdisc = &noop_qdisc;

 return tbf_change(sch, opt);
}
