
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int * xfrm; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 int dst_output (struct sk_buff*) ;
 int ip_finish_output2 (struct sk_buff*) ;
 int ip_fragment (struct sk_buff*,int (*) (struct sk_buff*)) ;
 scalar_t__ ip_skb_dst_mtu (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int ip_finish_output(struct sk_buff *skb)
{







 if (skb->len > ip_skb_dst_mtu(skb) && !skb_is_gso(skb))
  return ip_fragment(skb, ip_finish_output2);
 else
  return ip_finish_output2(skb);
}
