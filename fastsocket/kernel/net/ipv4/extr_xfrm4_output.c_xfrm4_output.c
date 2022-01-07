
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 int NF_HOOK_COND (int ,int ,struct sk_buff*,int *,int ,int ,int) ;
 int NF_INET_POST_ROUTING ;
 int PF_INET ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int xfrm4_output_finish ;

int xfrm4_output(struct sk_buff *skb)
{
 return NF_HOOK_COND(PF_INET, NF_INET_POST_ROUTING, skb,
       ((void*)0), skb_dst(skb)->dev, xfrm4_output_finish,
       !(IPCB(skb)->flags & IPSKB_REROUTED));
}
