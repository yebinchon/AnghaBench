
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int packets; int bytes; } ;
struct TYPE_4__ {int lastuse; } ;
struct tcf_skbedit {int flags; scalar_t__ queue_mapping; int tcf_action; int tcf_lock; int priority; TYPE_2__ tcf_bstats; TYPE_1__ tcf_tm; } ;
struct tcf_result {int dummy; } ;
struct tc_action {struct tcf_skbedit* priv; } ;
struct sk_buff {TYPE_3__* dev; int priority; } ;
struct TYPE_6__ {scalar_t__ real_num_tx_queues; } ;


 int SKBEDIT_F_PRIORITY ;
 int SKBEDIT_F_QUEUE_MAPPING ;
 int jiffies ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 int skb_set_queue_mapping (struct sk_buff*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int tcf_skbedit(struct sk_buff *skb, struct tc_action *a,
         struct tcf_result *res)
{
 struct tcf_skbedit *d = a->priv;

 spin_lock(&d->tcf_lock);
 d->tcf_tm.lastuse = jiffies;
 d->tcf_bstats.bytes += qdisc_pkt_len(skb);
 d->tcf_bstats.packets++;

 if (d->flags & SKBEDIT_F_PRIORITY)
  skb->priority = d->priority;
 if (d->flags & SKBEDIT_F_QUEUE_MAPPING &&
     skb->dev->real_num_tx_queues > d->queue_mapping)
  skb_set_queue_mapping(skb, d->queue_mapping);

 spin_unlock(&d->tcf_lock);
 return d->tcf_action;
}
