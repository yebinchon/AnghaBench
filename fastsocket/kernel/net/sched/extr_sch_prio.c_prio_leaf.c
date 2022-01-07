
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_sched_data {struct Qdisc** queues; } ;
struct Qdisc {int dummy; } ;


 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct Qdisc *
prio_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 unsigned long band = arg - 1;

 return q->queues[band];
}
