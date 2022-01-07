
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbq_sched_data {int pmask; scalar_t__ now; } ;
struct TYPE_2__ {int overactions; } ;
struct cbq_class {int cpriority; int priority2; TYPE_1__ xstats; scalar_t__ penalty; scalar_t__ penalized; int qdisc; } ;


 int cbq_ovl_classic (struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static void cbq_ovl_lowprio(struct cbq_class *cl)
{
 struct cbq_sched_data *q = qdisc_priv(cl->qdisc);

 cl->penalized = q->now + cl->penalty;

 if (cl->cpriority != cl->priority2) {
  cl->cpriority = cl->priority2;
  q->pmask |= (1<<cl->cpriority);
  cl->xstats.overactions++;
 }
 cbq_ovl_classic(cl);
}
