
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct red_sched_data {int parms; struct Qdisc* qdisc; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_is_idling (int *) ;
 int red_start_of_idle_period (int *) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff * red_dequeue(struct Qdisc* sch)
{
 struct sk_buff *skb;
 struct red_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child = q->qdisc;

 skb = child->dequeue(child);
 if (skb)
  sch->q.qlen--;
 else if (!red_is_idling(&q->parms))
  red_start_of_idle_period(&q->parms);

 return skb;
}
