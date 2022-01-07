
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {int flags; } ;


 int ETH_P_IPV6 ;
 TYPE_1__* IP6CB (struct sk_buff*) ;
 int IP6SKB_XFRM_TRANSFORMED ;
 int htons (int ) ;
 int xfrm_output (struct sk_buff*) ;

__attribute__((used)) static int xfrm6_output_finish(struct sk_buff *skb)
{




 skb->protocol = htons(ETH_P_IPV6);
 return xfrm_output(skb);
}
