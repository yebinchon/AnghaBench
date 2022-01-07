
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_ovl {int penalty; scalar_t__ pad; scalar_t__ priority2; int strategy; } ;
struct sk_buff {int len; } ;
struct cbq_class {int penalty; scalar_t__ priority2; int ovl_strategy; } ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_cbq_ovl*) ;
 int TCA_CBQ_OVL_STRATEGY ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static __inline__ int cbq_dump_ovl(struct sk_buff *skb, struct cbq_class *cl)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_cbq_ovl opt;

 opt.strategy = cl->ovl_strategy;
 opt.priority2 = cl->priority2+1;
 opt.pad = 0;
 opt.penalty = cl->penalty;
 NLA_PUT(skb, TCA_CBQ_OVL_STRATEGY, sizeof(opt), &opt);
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
