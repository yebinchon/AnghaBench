
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct tcf_t {void* expires; void* lastuse; void* install; int ifindex; int eaction; int bindcnt; int refcnt; int action; int index; } ;
struct TYPE_2__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_mirred {TYPE_1__ tcf_tm; int tcfm_ifindex; int tcfm_eaction; int tcf_bindcnt; int tcf_refcnt; int tcf_action; int tcf_index; } ;
struct tc_mirred {void* expires; void* lastuse; void* install; int ifindex; int eaction; int bindcnt; int refcnt; int action; int index; } ;
struct tc_action {struct tcf_mirred* priv; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tcf_t*) ;
 int TCA_MIRRED_PARMS ;
 int TCA_MIRRED_TM ;
 scalar_t__ jiffies ;
 void* jiffies_to_clock_t (scalar_t__) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int tcf_mirred_dump(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_mirred *m = a->priv;
 struct tc_mirred opt = {
  .index = m->tcf_index,
  .action = m->tcf_action,
  .refcnt = m->tcf_refcnt - ref,
  .bindcnt = m->tcf_bindcnt - bind,
  .eaction = m->tcfm_eaction,
  .ifindex = m->tcfm_ifindex,
 };
 struct tcf_t t;

 NLA_PUT(skb, TCA_MIRRED_PARMS, sizeof(opt), &opt);
 t.install = jiffies_to_clock_t(jiffies - m->tcf_tm.install);
 t.lastuse = jiffies_to_clock_t(jiffies - m->tcf_tm.lastuse);
 t.expires = jiffies_to_clock_t(m->tcf_tm.expires);
 NLA_PUT(skb, TCA_MIRRED_TM, sizeof(t), &t);
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
