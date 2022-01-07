
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int classid; } ;
struct drr_class {struct Qdisc* qdisc; TYPE_1__ common; } ;
struct Qdisc {int dev_queue; } ;


 int drr_purge_queue (struct drr_class*) ;
 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int drr_graft_class(struct Qdisc *sch, unsigned long arg,
      struct Qdisc *new, struct Qdisc **old)
{
 struct drr_class *cl = (struct drr_class *)arg;

 if (new == ((void*)0)) {
  new = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
     &pfifo_qdisc_ops, cl->common.classid);
  if (new == ((void*)0))
   new = &noop_qdisc;
 }

 sch_tree_lock(sch);
 drr_purge_queue(cl);
 *old = cl->qdisc;
 cl->qdisc = new;
 sch_tree_unlock(sch);
 return 0;
}
