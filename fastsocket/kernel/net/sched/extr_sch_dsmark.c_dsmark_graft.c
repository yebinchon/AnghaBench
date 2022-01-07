
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsmark_qdisc_data {struct Qdisc* q; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; int handle; int dev_queue; } ;


 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*,struct Qdisc*,struct Qdisc**) ;
 struct Qdisc* qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int dsmark_graft(struct Qdisc *sch, unsigned long arg,
   struct Qdisc *new, struct Qdisc **old)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);

 pr_debug("dsmark_graft(sch %p,[qdisc %p],new %p,old %p)\n",
  sch, p, new, old);

 if (new == ((void*)0)) {
  new = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
     &pfifo_qdisc_ops,
     sch->handle);
  if (new == ((void*)0))
   new = &noop_qdisc;
 }

 sch_tree_lock(sch);
 *old = p->q;
 p->q = new;
 qdisc_tree_decrease_qlen(*old, (*old)->q.qlen);
 qdisc_reset(*old);
 sch_tree_unlock(sch);

 return 0;
}
