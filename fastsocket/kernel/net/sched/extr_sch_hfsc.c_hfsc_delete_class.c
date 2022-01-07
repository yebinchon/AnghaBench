
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {scalar_t__ level; scalar_t__ filter_cnt; scalar_t__ refcnt; int cl_common; int cl_parent; int siblings; } ;
struct hfsc_sched {int clhash; struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int hfsc_adjust_levels (int ) ;
 int hfsc_purge_queue (struct Qdisc*,struct hfsc_class*) ;
 int list_del (int *) ;
 int qdisc_class_hash_remove (int *,int *) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int
hfsc_delete_class(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (cl->level > 0 || cl->filter_cnt > 0 || cl == &q->root)
  return -EBUSY;

 sch_tree_lock(sch);

 list_del(&cl->siblings);
 hfsc_adjust_levels(cl->cl_parent);

 hfsc_purge_queue(sch, cl);
 qdisc_class_hash_remove(&q->clhash, &cl->cl_common);

 BUG_ON(--cl->refcnt == 0);





 sch_tree_unlock(sch);
 return 0;
}
