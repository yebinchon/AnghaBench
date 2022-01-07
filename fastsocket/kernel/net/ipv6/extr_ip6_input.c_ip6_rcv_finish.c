
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dst_input (struct sk_buff*) ;
 int ip6_route_input (struct sk_buff*) ;
 int * skb_dst (struct sk_buff*) ;

inline int ip6_rcv_finish( struct sk_buff *skb)
{
 if (skb_dst(skb) == ((void*)0))
  ip6_route_input(skb);

 return dst_input(skb);
}
