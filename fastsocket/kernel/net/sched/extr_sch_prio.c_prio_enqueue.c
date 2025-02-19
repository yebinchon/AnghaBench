
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {int drops; } ;
struct TYPE_5__ {int qlen; } ;
struct TYPE_4__ {int packets; int bytes; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_2__ q; TYPE_1__ bstats; } ;


 int NET_XMIT_SUCCESS ;
 int __NET_XMIT_BYPASS ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_xmit_drop_count (int) ;
 struct Qdisc* prio_classify (struct sk_buff*,struct Qdisc*,int*) ;
 int qdisc_enqueue (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;

__attribute__((used)) static int
prio_enqueue(struct sk_buff *skb, struct Qdisc *sch)
{
 struct Qdisc *qdisc;
 int ret;

 qdisc = prio_classify(skb, sch, &ret);
 ret = qdisc_enqueue(skb, qdisc);
 if (ret == NET_XMIT_SUCCESS) {
  sch->bstats.bytes += qdisc_pkt_len(skb);
  sch->bstats.packets++;
  sch->q.qlen++;
  return NET_XMIT_SUCCESS;
 }
 if (net_xmit_drop_count(ret))
  sch->qstats.drops++;
 return ret;
}
