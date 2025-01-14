
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {size_t tc_index; } ;
struct TYPE_9__ {int pdrop; int forced_mark; int forced_drop; int prob_mark; int prob_drop; } ;
struct TYPE_10__ {unsigned long qavg; } ;
struct gred_sched_data {scalar_t__ prio; scalar_t__ backlog; scalar_t__ limit; TYPE_2__ stats; TYPE_3__ parms; int bytesin; int packetsin; } ;
struct gred_sched {size_t DPs; size_t def; struct gred_sched_data** tab; } ;
struct TYPE_8__ {int overlimits; } ;
struct Qdisc {TYPE_1__ qstats; int q; } ;
struct TYPE_11__ {scalar_t__ tx_queue_len; } ;


 size_t GRED_VQ_MASK ;
 int INET_ECN_set_ce (struct sk_buff*) ;
 int NET_XMIT_CN ;



 int gred_backlog (struct gred_sched*,struct gred_sched_data*,struct Qdisc*) ;
 int gred_load_wred_set (struct gred_sched*,struct gred_sched_data*) ;
 scalar_t__ gred_rio_mode (struct gred_sched*) ;
 int gred_store_wred_set (struct gred_sched*,struct gred_sched_data*) ;
 int gred_use_ecn (struct gred_sched*) ;
 int gred_use_harddrop (struct gred_sched*) ;
 scalar_t__ gred_wred_mode (struct gred_sched*) ;
 TYPE_7__* qdisc_dev (struct Qdisc*) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int red_action (TYPE_3__*,unsigned long) ;
 unsigned long red_calc_qavg (TYPE_3__*,int ) ;
 int red_end_of_idle_period (TYPE_3__*) ;
 scalar_t__ red_is_idling (TYPE_3__*) ;
 scalar_t__ skb_queue_len (int *) ;
 size_t tc_index_to_dp (struct sk_buff*) ;

__attribute__((used)) static int gred_enqueue(struct sk_buff *skb, struct Qdisc* sch)
{
 struct gred_sched_data *q=((void*)0);
 struct gred_sched *t= qdisc_priv(sch);
 unsigned long qavg = 0;
 u16 dp = tc_index_to_dp(skb);

 if (dp >= t->DPs || (q = t->tab[dp]) == ((void*)0)) {
  dp = t->def;

  if ((q = t->tab[dp]) == ((void*)0)) {




   if (skb_queue_len(&sch->q) < qdisc_dev(sch)->tx_queue_len)
    return qdisc_enqueue_tail(skb, sch);
   else
    goto drop;
  }



  skb->tc_index = (skb->tc_index & ~GRED_VQ_MASK) | dp;
 }


 if (!gred_wred_mode(t) && gred_rio_mode(t)) {
  int i;

  for (i = 0; i < t->DPs; i++) {
   if (t->tab[i] && t->tab[i]->prio < q->prio &&
       !red_is_idling(&t->tab[i]->parms))
    qavg +=t->tab[i]->parms.qavg;
  }

 }

 q->packetsin++;
 q->bytesin += qdisc_pkt_len(skb);

 if (gred_wred_mode(t))
  gred_load_wred_set(t, q);

 q->parms.qavg = red_calc_qavg(&q->parms, gred_backlog(t, q, sch));

 if (red_is_idling(&q->parms))
  red_end_of_idle_period(&q->parms);

 if (gred_wred_mode(t))
  gred_store_wred_set(t, q);

 switch (red_action(&q->parms, q->parms.qavg + qavg)) {
  case 130:
   break;

  case 128:
   sch->qstats.overlimits++;
   if (!gred_use_ecn(t) || !INET_ECN_set_ce(skb)) {
    q->stats.prob_drop++;
    goto congestion_drop;
   }

   q->stats.prob_mark++;
   break;

  case 129:
   sch->qstats.overlimits++;
   if (gred_use_harddrop(t) || !gred_use_ecn(t) ||
       !INET_ECN_set_ce(skb)) {
    q->stats.forced_drop++;
    goto congestion_drop;
   }
   q->stats.forced_mark++;
   break;
 }

 if (q->backlog + qdisc_pkt_len(skb) <= q->limit) {
  q->backlog += qdisc_pkt_len(skb);
  return qdisc_enqueue_tail(skb, sch);
 }

 q->stats.pdrop++;
drop:
 return qdisc_drop(skb, sch);

congestion_drop:
 qdisc_drop(skb, sch);
 return NET_XMIT_CN;
}
