
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int classid; } ;
struct cbq_class {scalar_t__ police; struct Qdisc* q; TYPE_1__ common; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; int reshape_fail; int dev_queue; } ;


 int ENOBUFS ;
 scalar_t__ TC_POLICE_RECLASSIFY ;
 int cbq_reshape_fail ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int cbq_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
       struct Qdisc **old)
{
 struct cbq_class *cl = (struct cbq_class*)arg;

 if (new == ((void*)0)) {
  new = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
     &pfifo_qdisc_ops, cl->common.classid);
  if (new == ((void*)0))
   return -ENOBUFS;
 } else {




 }
 sch_tree_lock(sch);
 *old = cl->q;
 cl->q = new;
 qdisc_tree_decrease_qlen(*old, (*old)->q.qlen);
 qdisc_reset(*old);
 sch_tree_unlock(sch);

 return 0;
}
