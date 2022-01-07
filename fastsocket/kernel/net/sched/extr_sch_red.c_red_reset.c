
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct red_sched_data {int parms; int qdisc; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;
 int red_restart (int *) ;

__attribute__((used)) static void red_reset(struct Qdisc* sch)
{
 struct red_sched_data *q = qdisc_priv(sch);

 qdisc_reset(q->qdisc);
 sch->q.qlen = 0;
 red_restart(&q->parms);
}
