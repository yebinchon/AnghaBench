
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ETH_P_IPV6 ;
 int IPPROTO_IPV6 ;
 int ip6_tnl_rcv (struct sk_buff*,int ,int ,int ) ;
 int ip6ip6_dscp_ecn_decapsulate ;

__attribute__((used)) static int ip6ip6_rcv(struct sk_buff *skb)
{
 return ip6_tnl_rcv(skb, ETH_P_IPV6, IPPROTO_IPV6,
      ip6ip6_dscp_ecn_decapsulate);
}
