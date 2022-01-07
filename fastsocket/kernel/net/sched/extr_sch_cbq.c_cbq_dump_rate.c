
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct cbq_class {TYPE_1__* R_tab; } ;
struct TYPE_2__ {int rate; } ;


 int NLA_PUT (struct sk_buff*,int ,int,int *) ;
 int TCA_CBQ_RATE ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static __inline__ int cbq_dump_rate(struct sk_buff *skb, struct cbq_class *cl)
{
 unsigned char *b = skb_tail_pointer(skb);

 NLA_PUT(skb, TCA_CBQ_RATE, sizeof(cl->R_tab->rate), &cl->R_tab->rate);
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
