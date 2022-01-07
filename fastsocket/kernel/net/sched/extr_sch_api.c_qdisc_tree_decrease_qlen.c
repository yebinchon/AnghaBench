
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct Qdisc_class_ops {unsigned long (* get ) (struct Qdisc*,scalar_t__) ;int (* put ) (struct Qdisc*,unsigned long) ;int (* qlen_notify ) (struct Qdisc*,unsigned long) ;} ;
struct TYPE_4__ {unsigned int qlen; } ;
struct Qdisc {scalar_t__ parent; TYPE_2__ q; TYPE_1__* ops; } ;
struct TYPE_3__ {struct Qdisc_class_ops* cl_ops; } ;


 scalar_t__ TC_H_INGRESS ;
 scalar_t__ TC_H_MAJ (scalar_t__) ;
 scalar_t__ TC_H_ROOT ;
 int WARN_ON (int) ;
 int qdisc_dev (struct Qdisc*) ;
 struct Qdisc* qdisc_lookup (int ,scalar_t__) ;
 unsigned long stub1 (struct Qdisc*,scalar_t__) ;
 int stub2 (struct Qdisc*,unsigned long) ;
 int stub3 (struct Qdisc*,unsigned long) ;

void qdisc_tree_decrease_qlen(struct Qdisc *sch, unsigned int n)
{
 const struct Qdisc_class_ops *cops;
 unsigned long cl;
 u32 parentid;

 if (n == 0)
  return;
 while ((parentid = sch->parent)) {
  if (TC_H_MAJ(parentid) == TC_H_MAJ(TC_H_INGRESS))
   return;

  sch = qdisc_lookup(qdisc_dev(sch), TC_H_MAJ(parentid));
  if (sch == ((void*)0)) {
   WARN_ON(parentid != TC_H_ROOT);
   return;
  }
  cops = sch->ops->cl_ops;
  if (cops->qlen_notify) {
   cl = cops->get(sch, parentid);
   cops->qlen_notify(sch, cl);
   cops->put(sch, cl);
  }
  sch->q.qlen -= n;
 }
}
