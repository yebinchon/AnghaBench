
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct prio_sched_data {int bands; struct Qdisc** queues; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *prio_peek(struct Qdisc *sch)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 int prio;

 for (prio = 0; prio < q->bands; prio++) {
  struct Qdisc *qdisc = q->queues[prio];
  struct sk_buff *skb = qdisc->ops->peek(qdisc);
  if (skb)
   return skb;
 }
 return ((void*)0);
}
