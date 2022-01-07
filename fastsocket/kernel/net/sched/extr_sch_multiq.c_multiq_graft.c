
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multiq_sched_data {struct Qdisc** queues; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct Qdisc noop_qdisc ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int multiq_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
        struct Qdisc **old)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 unsigned long band = arg - 1;

 if (new == ((void*)0))
  new = &noop_qdisc;

 sch_tree_lock(sch);
 *old = q->queues[band];
 q->queues[band] = new;
 qdisc_tree_decrease_qlen(*old, (*old)->q.qlen);
 qdisc_reset(*old);
 sch_tree_unlock(sch);

 return 0;
}
