
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int saddr; } ;


 int IPPROTO_IPIP ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int xfrm4_rcv_spi (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int xfrm_tunnel_rcv(struct sk_buff *skb)
{
 return xfrm4_rcv_spi(skb, IPPROTO_IPIP, ip_hdr(skb)->saddr);
}
