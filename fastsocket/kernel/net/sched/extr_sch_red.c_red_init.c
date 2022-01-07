
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct red_sched_data {int * qdisc; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int noop_qdisc ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_change (struct Qdisc*,struct nlattr*) ;

__attribute__((used)) static int red_init(struct Qdisc* sch, struct nlattr *opt)
{
 struct red_sched_data *q = qdisc_priv(sch);

 q->qdisc = &noop_qdisc;
 return red_change(sch, opt);
}
