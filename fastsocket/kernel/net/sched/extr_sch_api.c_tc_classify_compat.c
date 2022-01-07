
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {int dummy; } ;
struct tcf_proto {scalar_t__ protocol; int (* classify ) (struct sk_buff*,struct tcf_proto*,struct tcf_result*) ;struct tcf_proto* next; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ tc_verd; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_ALL ;
 scalar_t__ SET_TC_VERD (scalar_t__,int ) ;
 int TC_ACT_RECLASSIFY ;
 scalar_t__ htons (int ) ;
 int stub1 (struct sk_buff*,struct tcf_proto*,struct tcf_result*) ;

int tc_classify_compat(struct sk_buff *skb, struct tcf_proto *tp,
         struct tcf_result *res)
{
 __be16 protocol = skb->protocol;
 int err = 0;

 for (; tp; tp = tp->next) {
  if ((tp->protocol == protocol ||
       tp->protocol == htons(ETH_P_ALL)) &&
      (err = tp->classify(skb, tp, res)) >= 0) {




   return err;
  }
 }
 return -1;
}
