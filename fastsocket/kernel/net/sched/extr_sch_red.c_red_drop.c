
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int other; } ;
struct red_sched_data {int parms; TYPE_1__ stats; struct Qdisc* qdisc; } ;
struct TYPE_7__ {int qlen; } ;
struct TYPE_6__ {int drops; } ;
struct Qdisc {TYPE_3__ q; TYPE_2__ qstats; TYPE_4__* ops; } ;
struct TYPE_8__ {unsigned int (* drop ) (struct Qdisc*) ;} ;


 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_is_idling (int *) ;
 int red_start_of_idle_period (int *) ;
 unsigned int stub1 (struct Qdisc*) ;

__attribute__((used)) static unsigned int red_drop(struct Qdisc* sch)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child = q->qdisc;
 unsigned int len;

 if (child->ops->drop && (len = child->ops->drop(child)) > 0) {
  q->stats.other++;
  sch->qstats.drops++;
  sch->q.qlen--;
  return len;
 }

 if (!red_is_idling(&q->parms))
  red_start_of_idle_period(&q->parms);

 return 0;
}
