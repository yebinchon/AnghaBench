
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_sched_data {int bands; int * queues; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;

__attribute__((used)) static void
prio_reset(struct Qdisc* sch)
{
 int prio;
 struct prio_sched_data *q = qdisc_priv(sch);

 for (prio=0; prio<q->bands; prio++)
  qdisc_reset(q->queues[prio]);
 sch->q.qlen = 0;
}
