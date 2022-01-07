
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_prio_qopt {int bands; int* priomap; } ;
struct prio_sched_data {int bands; struct Qdisc** queues; int prio2band; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; int handle; int dev_queue; } ;


 int EINVAL ;
 int TCQ_PRIO_BANDS ;
 int TC_H_MAKE (int ,int) ;
 int TC_PRIO_MAX ;
 int memcpy (int ,int*,int) ;
 struct tc_prio_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_destroy (struct Qdisc*) ;
 int qdisc_dev (struct Qdisc*) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int prio_tune(struct Qdisc *sch, struct nlattr *opt)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 struct tc_prio_qopt *qopt;
 int i;

 if (nla_len(opt) < sizeof(*qopt))
  return -EINVAL;
 qopt = nla_data(opt);

 if (qopt->bands > TCQ_PRIO_BANDS || qopt->bands < 2)
  return -EINVAL;

 for (i=0; i<=TC_PRIO_MAX; i++) {
  if (qopt->priomap[i] >= qopt->bands)
   return -EINVAL;
 }

 sch_tree_lock(sch);
 q->bands = qopt->bands;
 memcpy(q->prio2band, qopt->priomap, TC_PRIO_MAX+1);

 for (i=q->bands; i<TCQ_PRIO_BANDS; i++) {
  struct Qdisc *child = q->queues[i];
  q->queues[i] = &noop_qdisc;
  if (child != &noop_qdisc) {
   qdisc_tree_decrease_qlen(child, child->q.qlen);
   qdisc_destroy(child);
  }
 }
 sch_tree_unlock(sch);

 for (i=0; i<q->bands; i++) {
  if (q->queues[i] == &noop_qdisc) {
   struct Qdisc *child, *old;
   child = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
        &pfifo_qdisc_ops,
        TC_H_MAKE(sch->handle, i + 1));
   if (child) {
    sch_tree_lock(sch);
    old = q->queues[i];
    q->queues[i] = child;

    if (old != &noop_qdisc) {
     qdisc_tree_decrease_qlen(old,
         old->q.qlen);
     qdisc_destroy(old);
    }
    sch_tree_unlock(sch);
   }
  }
 }
 return 0;
}
