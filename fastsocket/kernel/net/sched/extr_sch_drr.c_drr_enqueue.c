
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct drr_sched {int active; } ;
struct TYPE_11__ {unsigned int bytes; int packets; } ;
struct TYPE_8__ {int drops; } ;
struct drr_class {TYPE_4__ bstats; int quantum; int deficit; int alist; TYPE_7__* qdisc; TYPE_1__ qstats; } ;
struct TYPE_13__ {int qlen; } ;
struct TYPE_12__ {unsigned int bytes; int packets; } ;
struct TYPE_9__ {int drops; } ;
struct Qdisc {TYPE_6__ q; TYPE_5__ bstats; TYPE_2__ qstats; } ;
struct TYPE_10__ {int qlen; } ;
struct TYPE_14__ {TYPE_3__ q; } ;


 int NET_XMIT_SUCCESS ;
 int __NET_XMIT_BYPASS ;
 struct drr_class* drr_classify (struct sk_buff*,struct Qdisc*,int*) ;
 int kfree_skb (struct sk_buff*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ net_xmit_drop_count (int) ;
 int qdisc_enqueue (struct sk_buff*,TYPE_7__*) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 struct drr_sched* qdisc_priv (struct Qdisc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int drr_enqueue(struct sk_buff *skb, struct Qdisc *sch)
{
 struct drr_sched *q = qdisc_priv(sch);
 struct drr_class *cl;
 unsigned int len;
 int err;

 cl = drr_classify(skb, sch, &err);
 if (cl == ((void*)0)) {
  if (err & __NET_XMIT_BYPASS)
   sch->qstats.drops++;
  kfree_skb(skb);
  return err;
 }

 len = qdisc_pkt_len(skb);
 err = qdisc_enqueue(skb, cl->qdisc);
 if (unlikely(err != NET_XMIT_SUCCESS)) {
  if (net_xmit_drop_count(err)) {
   cl->qstats.drops++;
   sch->qstats.drops++;
  }
  return err;
 }

 if (cl->qdisc->q.qlen == 1) {
  list_add_tail(&cl->alist, &q->active);
  cl->deficit = cl->quantum;
 }

 cl->bstats.packets++;
 cl->bstats.bytes += len;
 sch->bstats.packets++;
 sch->bstats.bytes += len;

 sch->q.qlen++;
 return err;
}
