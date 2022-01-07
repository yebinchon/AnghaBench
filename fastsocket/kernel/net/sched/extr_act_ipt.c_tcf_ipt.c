
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


struct xt_target_param {TYPE_6__* target; int targinfo; int hooknum; int * out; int in; } ;
struct tcf_result {int dummy; } ;
struct TYPE_14__ {int drops; } ;
struct TYPE_9__ {int packets; int bytes; } ;
struct TYPE_8__ {int lastuse; } ;
struct tcf_ipt {int tcf_lock; TYPE_7__ tcf_qstats; TYPE_5__* tcfi_t; int tcfi_hook; TYPE_2__ tcf_bstats; TYPE_1__ tcf_tm; } ;
struct tc_action {struct tcf_ipt* priv; } ;
struct sk_buff {int dev; } ;
struct TYPE_13__ {int (* target ) (struct sk_buff*,struct xt_target_param*) ;} ;
struct TYPE_10__ {TYPE_6__* target; } ;
struct TYPE_11__ {TYPE_3__ kernel; } ;
struct TYPE_12__ {int data; TYPE_4__ u; } ;


 int GFP_ATOMIC ;



 int TC_ACT_OK ;
 int TC_ACT_PIPE ;
 int TC_ACT_SHOT ;
 int TC_ACT_UNSPEC ;
 int TC_POLICE_OK ;
 int jiffies ;
 int net_ratelimit () ;
 int pr_notice (char*,int) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 scalar_t__ skb_unclone (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sk_buff*,struct xt_target_param*) ;

__attribute__((used)) static int tcf_ipt(struct sk_buff *skb, struct tc_action *a,
     struct tcf_result *res)
{
 int ret = 0, result = 0;
 struct tcf_ipt *ipt = a->priv;
 struct xt_target_param par;

 if (skb_unclone(skb, GFP_ATOMIC))
  return TC_ACT_UNSPEC;

 spin_lock(&ipt->tcf_lock);

 ipt->tcf_tm.lastuse = jiffies;
 ipt->tcf_bstats.bytes += qdisc_pkt_len(skb);
 ipt->tcf_bstats.packets++;




 par.in = skb->dev;
 par.out = ((void*)0);
 par.hooknum = ipt->tcfi_hook;
 par.target = ipt->tcfi_t->u.kernel.target;
 par.targinfo = ipt->tcfi_t->data;
 ret = par.target->target(skb, &par);

 switch (ret) {
 case 129:
  result = TC_ACT_OK;
  break;
 case 128:
  result = TC_ACT_SHOT;
  ipt->tcf_qstats.drops++;
  break;
 case 130:
  result = TC_ACT_PIPE;
  break;
 default:
  if (net_ratelimit())
   pr_notice("tc filter: Bogus netfilter code"
      " %d assume ACCEPT\n", ret);
  result = TC_POLICE_OK;
  break;
 }
 spin_unlock(&ipt->tcf_lock);
 return result;

}
