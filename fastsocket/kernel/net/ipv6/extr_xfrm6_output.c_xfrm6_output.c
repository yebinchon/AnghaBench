
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int NF_HOOK (int ,int ,struct sk_buff*,int *,int ,int ) ;
 int NF_INET_POST_ROUTING ;
 int PF_INET6 ;
 int __xfrm6_output ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

int xfrm6_output(struct sk_buff *skb)
{
 return NF_HOOK(PF_INET6, NF_INET_POST_ROUTING, skb, ((void*)0), skb_dst(skb)->dev,
         __xfrm6_output);
}
