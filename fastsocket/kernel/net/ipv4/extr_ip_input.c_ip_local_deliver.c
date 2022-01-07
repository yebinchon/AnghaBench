
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct TYPE_2__ {int frag_off; } ;


 int IP_DEFRAG_LOCAL_DELIVER ;
 int IP_MF ;
 int IP_OFFSET ;
 int NF_HOOK (int ,int ,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_LOCAL_IN ;
 int PF_INET ;
 int htons (int) ;
 scalar_t__ ip_defrag (struct sk_buff*,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_local_deliver_finish ;

int ip_local_deliver(struct sk_buff *skb)
{




 if (ip_hdr(skb)->frag_off & htons(IP_MF | IP_OFFSET)) {
  if (ip_defrag(skb, IP_DEFRAG_LOCAL_DELIVER))
   return 0;
 }

 return NF_HOOK(PF_INET, NF_INET_LOCAL_IN, skb, skb->dev, ((void*)0),
         ip_local_deliver_finish);
}
