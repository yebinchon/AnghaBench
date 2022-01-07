
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; } ;
struct sk_buff {int dummy; } ;
struct multiq_sched_data {TYPE_1__** queues; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int handle; } ;


 int TC_H_MIN (unsigned long) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int multiq_dump_class(struct Qdisc *sch, unsigned long cl,
        struct sk_buff *skb, struct tcmsg *tcm)
{
 struct multiq_sched_data *q = qdisc_priv(sch);

 tcm->tcm_handle |= TC_H_MIN(cl);
 tcm->tcm_info = q->queues[cl-1]->handle;
 return 0;
}
