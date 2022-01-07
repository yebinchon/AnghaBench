
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t nhoff; } ;


 TYPE_1__* IP6CB (struct sk_buff*) ;
 int * skb_network_header (struct sk_buff*) ;
 int xfrm6_rcv_spi (struct sk_buff*,int ,int ) ;

int xfrm6_rcv(struct sk_buff *skb)
{
 return xfrm6_rcv_spi(skb, skb_network_header(skb)[IP6CB(skb)->nhoff],
        0);
}
