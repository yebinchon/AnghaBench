
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NF_HOOK (int ,int ,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_LOCAL_IN ;
 int PF_INET6 ;
 int ip6_input_finish ;

int ip6_input(struct sk_buff *skb)
{
 return NF_HOOK(PF_INET6, NF_INET_LOCAL_IN, skb, skb->dev, ((void*)0),
         ip6_input_finish);
}
