
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tbf_sched_data {scalar_t__ max_size; int qdisc; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int packets; int bytes; } ;
struct TYPE_5__ {int qlen; } ;
struct TYPE_4__ {int drops; } ;
struct Qdisc {TYPE_3__ bstats; TYPE_2__ q; TYPE_1__ qstats; } ;


 scalar_t__ net_xmit_drop_count (int) ;
 int qdisc_enqueue (struct sk_buff*,int ) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reshape_fail (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int tbf_segment (struct sk_buff*,struct Qdisc*) ;

__attribute__((used)) static int tbf_enqueue(struct sk_buff *skb, struct Qdisc* sch)
{
 struct tbf_sched_data *q = qdisc_priv(sch);
 int ret;

 if (qdisc_pkt_len(skb) > q->max_size) {
  if (skb_is_gso(skb))
   return tbf_segment(skb, sch);
  return qdisc_reshape_fail(skb, sch);
 }
 ret = qdisc_enqueue(skb, q->qdisc);
 if (ret != 0) {
  if (net_xmit_drop_count(ret))
   sch->qstats.drops++;
  return ret;
 }

 sch->q.qlen++;
 sch->bstats.bytes += qdisc_pkt_len(skb);
 sch->bstats.packets++;
 return 0;
}
