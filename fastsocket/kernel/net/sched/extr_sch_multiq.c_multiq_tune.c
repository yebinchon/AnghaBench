
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tc_multiq_qopt {int bands; } ;
struct nlattr {int dummy; } ;
struct multiq_sched_data {int bands; int max_bands; struct Qdisc** queues; } ;
struct TYPE_5__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; int handle; int dev_queue; } ;
struct TYPE_6__ {int real_num_tx_queues; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int TC_H_MAKE (int ,int) ;
 int netif_is_multiqueue (TYPE_2__*) ;
 struct tc_multiq_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (TYPE_2__*,int ,int *,int ) ;
 int qdisc_destroy (struct Qdisc*) ;
 TYPE_2__* qdisc_dev (struct Qdisc*) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int multiq_tune(struct Qdisc *sch, struct nlattr *opt)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 struct tc_multiq_qopt *qopt;
 int i;

 if (!netif_is_multiqueue(qdisc_dev(sch)))
  return -EOPNOTSUPP;
 if (nla_len(opt) < sizeof(*qopt))
  return -EINVAL;

 qopt = nla_data(opt);

 qopt->bands = qdisc_dev(sch)->real_num_tx_queues;

 sch_tree_lock(sch);
 q->bands = qopt->bands;
 for (i = q->bands; i < q->max_bands; i++) {
  if (q->queues[i] != &noop_qdisc) {
   struct Qdisc *child = q->queues[i];
   q->queues[i] = &noop_qdisc;
   qdisc_tree_decrease_qlen(child, child->q.qlen);
   qdisc_destroy(child);
  }
 }

 sch_tree_unlock(sch);

 for (i = 0; i < q->bands; i++) {
  if (q->queues[i] == &noop_qdisc) {
   struct Qdisc *child, *old;
   child = qdisc_create_dflt(qdisc_dev(sch),
        sch->dev_queue,
        &pfifo_qdisc_ops,
        TC_H_MAKE(sch->handle,
           i + 1));
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
