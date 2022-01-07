
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_sched_data {int bands; int * queues; int filter_list; } ;
struct Qdisc {int dummy; } ;


 int qdisc_destroy (int ) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void
prio_destroy(struct Qdisc* sch)
{
 int prio;
 struct prio_sched_data *q = qdisc_priv(sch);

 tcf_destroy_chain(&q->filter_list);
 for (prio=0; prio<q->bands; prio++)
  qdisc_destroy(q->queues[prio]);
}
