
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct Qdisc* q; } ;
struct TYPE_7__ {TYPE_2__ leaf; } ;
struct TYPE_5__ {int classid; } ;
struct htb_class {TYPE_3__ un; TYPE_1__ common; scalar_t__ level; } ;
struct TYPE_8__ {int qlen; } ;
struct Qdisc {TYPE_4__ q; int dev_queue; } ;


 int EINVAL ;
 int ENOBUFS ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int htb_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
       struct Qdisc **old)
{
 struct htb_class *cl = (struct htb_class *)arg;

 if (cl->level)
  return -EINVAL;
 if (new == ((void*)0) &&
     (new = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
         &pfifo_qdisc_ops,
         cl->common.classid)) == ((void*)0))
  return -ENOBUFS;

 sch_tree_lock(sch);
 *old = cl->un.leaf.q;
 cl->un.leaf.q = new;
 if (*old != ((void*)0)) {
  qdisc_tree_decrease_qlen(*old, (*old)->q.qlen);
  qdisc_reset(*old);
 }
 sch_tree_unlock(sch);
 return 0;
}
