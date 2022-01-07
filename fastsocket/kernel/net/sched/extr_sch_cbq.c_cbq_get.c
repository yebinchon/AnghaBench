
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cbq_sched_data {int dummy; } ;
struct cbq_class {int refcnt; } ;
struct Qdisc {int dummy; } ;


 struct cbq_class* cbq_class_lookup (struct cbq_sched_data*,int ) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static unsigned long cbq_get(struct Qdisc *sch, u32 classid)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl = cbq_class_lookup(q, classid);

 if (cl) {
  cl->refcnt++;
  return (unsigned long)cl;
 }
 return 0;
}
