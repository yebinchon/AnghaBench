
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct tcf_t {void* expires; void* lastuse; void* install; int bindcnt; int refcnt; int action; int index; int flags; int mask; int new_addr; int old_addr; } ;
struct TYPE_2__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_nat {TYPE_1__ tcf_tm; int tcf_bindcnt; int tcf_refcnt; int tcf_action; int tcf_index; int flags; int mask; int new_addr; int old_addr; } ;
struct tc_nat {void* expires; void* lastuse; void* install; int bindcnt; int refcnt; int action; int index; int flags; int mask; int new_addr; int old_addr; } ;
struct tc_action {struct tcf_nat* priv; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tcf_t*) ;
 int TCA_NAT_PARMS ;
 int TCA_NAT_TM ;
 scalar_t__ jiffies ;
 void* jiffies_to_clock_t (scalar_t__) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int tcf_nat_dump(struct sk_buff *skb, struct tc_action *a,
   int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_nat *p = a->priv;
 struct tc_nat opt = {
  .old_addr = p->old_addr,
  .new_addr = p->new_addr,
  .mask = p->mask,
  .flags = p->flags,

  .index = p->tcf_index,
  .action = p->tcf_action,
  .refcnt = p->tcf_refcnt - ref,
  .bindcnt = p->tcf_bindcnt - bind,
 };
 struct tcf_t t;

 NLA_PUT(skb, TCA_NAT_PARMS, sizeof(opt), &opt);
 t.install = jiffies_to_clock_t(jiffies - p->tcf_tm.install);
 t.lastuse = jiffies_to_clock_t(jiffies - p->tcf_tm.lastuse);
 t.expires = jiffies_to_clock_t(p->tcf_tm.expires);
 NLA_PUT(skb, TCA_NAT_TM, sizeof(t), &t);

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
