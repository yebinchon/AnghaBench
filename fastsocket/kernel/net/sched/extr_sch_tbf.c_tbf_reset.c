
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbf_sched_data {int watchdog; int mtu; int ptokens; int buffer; int tokens; int t_c; int qdisc; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int psched_get_time () ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void tbf_reset(struct Qdisc* sch)
{
 struct tbf_sched_data *q = qdisc_priv(sch);

 qdisc_reset(q->qdisc);
 sch->q.qlen = 0;
 q->t_c = psched_get_time();
 q->tokens = q->buffer;
 q->ptokens = q->mtu;
 qdisc_watchdog_cancel(&q->watchdog);
}
