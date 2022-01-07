
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct TYPE_6__ {int lastuse; } ;
struct TYPE_5__ {int drops; } ;
struct TYPE_4__ {int packets; int bytes; } ;
struct tcf_gact {int tcfg_ptype; int tcf_action; int tcf_lock; TYPE_3__ tcf_tm; TYPE_2__ tcf_qstats; TYPE_1__ tcf_bstats; } ;
struct tc_action {struct tcf_gact* priv; } ;
struct sk_buff {int dummy; } ;


 int TC_ACT_SHOT ;
 int gact_rand (struct tcf_gact*) ;
 int jiffies ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct tcf_gact*) ;

__attribute__((used)) static int tcf_gact(struct sk_buff *skb, struct tc_action *a, struct tcf_result *res)
{
 struct tcf_gact *gact = a->priv;
 int action = TC_ACT_SHOT;

 spin_lock(&gact->tcf_lock);






 action = gact->tcf_action;

 gact->tcf_bstats.bytes += qdisc_pkt_len(skb);
 gact->tcf_bstats.packets++;
 if (action == TC_ACT_SHOT)
  gact->tcf_qstats.drops++;
 gact->tcf_tm.lastuse = jiffies;
 spin_unlock(&gact->tcf_lock);

 return action;
}
