
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct prio_sched_data {int bands; struct Qdisc** queues; } ;
struct TYPE_3__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; TYPE_2__* ops; } ;
struct TYPE_4__ {unsigned int (* drop ) (struct Qdisc*) ;} ;


 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned int stub1 (struct Qdisc*) ;

__attribute__((used)) static unsigned int prio_drop(struct Qdisc* sch)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 int prio;
 unsigned int len;
 struct Qdisc *qdisc;

 for (prio = q->bands-1; prio >= 0; prio--) {
  qdisc = q->queues[prio];
  if (qdisc->ops->drop && (len = qdisc->ops->drop(qdisc)) != 0) {
   sch->q.qlen--;
   return len;
  }
 }
 return 0;
}
