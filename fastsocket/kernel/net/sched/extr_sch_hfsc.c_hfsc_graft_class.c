
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int classid; } ;
struct hfsc_class {scalar_t__ level; struct Qdisc* qdisc; TYPE_1__ cl_common; } ;
struct Qdisc {int dev_queue; } ;


 int EINVAL ;
 int hfsc_purge_queue (struct Qdisc*,struct hfsc_class*) ;
 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int
hfsc_graft_class(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
   struct Qdisc **old)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (cl->level > 0)
  return -EINVAL;
 if (new == ((void*)0)) {
  new = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
     &pfifo_qdisc_ops,
     cl->cl_common.classid);
  if (new == ((void*)0))
   new = &noop_qdisc;
 }

 sch_tree_lock(sch);
 hfsc_purge_queue(sch, cl);
 *old = cl->qdisc;
 cl->qdisc = new;
 sch_tree_unlock(sch);
 return 0;
}
