
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int protocol; } ;


 TYPE_1__* ip_hdr (struct sk_buff*) ;

__attribute__((used)) static int ipip_xfrm_rcv(struct xfrm_state *x, struct sk_buff *skb)
{
 return ip_hdr(skb)->protocol;
}
