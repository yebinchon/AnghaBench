
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct tcf_t {void* expires; void* lastuse; void* install; scalar_t__ ptype; int pval; int paction; int action; int bindcnt; int refcnt; int index; } ;
struct TYPE_2__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_gact {TYPE_1__ tcf_tm; scalar_t__ tcfg_ptype; int tcfg_pval; int tcfg_paction; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_gact_p {void* expires; void* lastuse; void* install; scalar_t__ ptype; int pval; int paction; int action; int bindcnt; int refcnt; int index; } ;
struct tc_gact {void* expires; void* lastuse; void* install; scalar_t__ ptype; int pval; int paction; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {struct tcf_gact* priv; } ;
struct sk_buff {int len; } ;
typedef int p_opt ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tcf_t*) ;
 int TCA_GACT_PARMS ;
 int TCA_GACT_PROB ;
 int TCA_GACT_TM ;
 scalar_t__ jiffies ;
 void* jiffies_to_clock_t (scalar_t__) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int tcf_gact_dump(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_gact *gact = a->priv;
 struct tc_gact opt = {
  .index = gact->tcf_index,
  .refcnt = gact->tcf_refcnt - ref,
  .bindcnt = gact->tcf_bindcnt - bind,
  .action = gact->tcf_action,
 };
 struct tcf_t t;

 NLA_PUT(skb, TCA_GACT_PARMS, sizeof(opt), &opt);
 t.install = jiffies_to_clock_t(jiffies - gact->tcf_tm.install);
 t.lastuse = jiffies_to_clock_t(jiffies - gact->tcf_tm.lastuse);
 t.expires = jiffies_to_clock_t(gact->tcf_tm.expires);
 NLA_PUT(skb, TCA_GACT_TM, sizeof(t), &t);
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
