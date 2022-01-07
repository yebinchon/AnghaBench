
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_sched_data {int ** queues; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 int TCQ_PRIO_BANDS ;
 int noop_qdisc ;
 int prio_tune (struct Qdisc*,struct nlattr*) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int prio_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 int i;

 for (i=0; i<TCQ_PRIO_BANDS; i++)
  q->queues[i] = &noop_qdisc;

 if (opt == ((void*)0)) {
  return -EINVAL;
 } else {
  int err;

  if ((err= prio_tune(sch, opt)) != 0)
   return err;
 }
 return 0;
}
