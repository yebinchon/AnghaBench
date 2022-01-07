
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {struct qfq_group* groups; int clhash; } ;
struct qfq_group {int index; int slot_shift; int * slots; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int FRAC_BITS ;
 int INIT_HLIST_HEAD (int *) ;
 int QFQ_MAX_INDEX ;
 int QFQ_MAX_SLOTS ;
 int QFQ_MTU_SHIFT ;
 int qdisc_class_hash_init (int *) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int qfq_init_qdisc(struct Qdisc *sch, struct nlattr *opt)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_group *grp;
 int i, j, err;

 err = qdisc_class_hash_init(&q->clhash);
 if (err < 0)
  return err;

 for (i = 0; i <= QFQ_MAX_INDEX; i++) {
  grp = &q->groups[i];
  grp->index = i;
  grp->slot_shift = QFQ_MTU_SHIFT + FRAC_BITS
       - (QFQ_MAX_INDEX - i);
  for (j = 0; j < QFQ_MAX_SLOTS; j++)
   INIT_HLIST_HEAD(&grp->slots[j]);
 }

 return 0;
}
