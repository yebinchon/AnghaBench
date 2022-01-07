
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int protocol; } ;


 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int xfrm4_rcv_spi (struct sk_buff*,int ,int ) ;

int xfrm4_rcv(struct sk_buff *skb)
{
 return xfrm4_rcv_spi(skb, ip_hdr(skb)->protocol, 0);
}
