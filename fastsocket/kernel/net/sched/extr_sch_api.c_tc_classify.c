
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_result {int dummy; } ;
struct tcf_proto {int prio; int protocol; } ;
struct sk_buff {int tc_verd; int protocol; } ;
typedef int __be16 ;


 int G_TC_VERD (int ) ;
 scalar_t__ MAX_REC_LOOP ;
 int SET_TC_VERD (int ,int ) ;
 int TC_ACT_RECLASSIFY ;
 int TC_ACT_SHOT ;
 int ntohs (int ) ;
 int printk (char*,int,int ) ;
 int tc_classify_compat (struct sk_buff*,struct tcf_proto*,struct tcf_result*) ;

int tc_classify(struct sk_buff *skb, struct tcf_proto *tp,
  struct tcf_result *res)
{
 int err = 0;
 __be16 protocol;




 protocol = skb->protocol;

 err = tc_classify_compat(skb, tp, res);
 return err;
}
