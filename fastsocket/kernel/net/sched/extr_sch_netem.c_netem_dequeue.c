
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tv64; } ;
struct sk_buff {TYPE_2__ tstamp; int tc_verd; } ;
struct netem_skb_cb {scalar_t__ time_to_send; } ;
struct netem_sched_data {int watchdog; TYPE_4__* qdisc; } ;
struct TYPE_8__ {int qlen; } ;
struct Qdisc {int flags; TYPE_3__ q; } ;
typedef scalar_t__ psched_time_t ;
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_6__ {struct sk_buff* (* peek ) (TYPE_4__*) ;} ;


 int AT_INGRESS ;
 int G_TC_FROM (int ) ;
 int TCQ_F_THROTTLED ;
 struct netem_skb_cb* netem_skb_cb (struct sk_buff*) ;
 int pr_debug (char*,struct sk_buff*) ;
 scalar_t__ psched_get_time () ;
 struct sk_buff* qdisc_dequeue_peeked (TYPE_4__*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_schedule (int *,scalar_t__) ;
 struct sk_buff* stub1 (TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *netem_dequeue(struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb;

 if (sch->flags & TCQ_F_THROTTLED)
  return ((void*)0);

 skb = q->qdisc->ops->peek(q->qdisc);
 if (skb) {
  const struct netem_skb_cb *cb = netem_skb_cb(skb);
  psched_time_t now = psched_get_time();


  if (cb->time_to_send <= now) {
   skb = qdisc_dequeue_peeked(q->qdisc);
   if (unlikely(!skb))
    return ((void*)0);
   pr_debug("netem_dequeue: return skb=%p\n", skb);
   sch->q.qlen--;
   return skb;
  }

  qdisc_watchdog_schedule(&q->watchdog, cb->time_to_send);
 }

 return ((void*)0);
}
