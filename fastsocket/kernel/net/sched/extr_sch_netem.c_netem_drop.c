
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct netem_sched_data {TYPE_4__* qdisc; } ;
struct TYPE_5__ {int drops; } ;
struct TYPE_7__ {int qlen; } ;
struct Qdisc {TYPE_1__ qstats; TYPE_3__ q; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_6__ {unsigned int (* drop ) (TYPE_4__*) ;} ;


 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned int stub1 (TYPE_4__*) ;

__attribute__((used)) static unsigned int netem_drop(struct Qdisc* sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 unsigned int len = 0;

 if (q->qdisc->ops->drop && (len = q->qdisc->ops->drop(q->qdisc)) != 0) {
  sch->q.qlen--;
  sch->qstats.drops++;
 }
 return len;
}
