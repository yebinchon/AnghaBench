
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ETH_P_IP ;
 int IPPROTO_IPIP ;
 int ip4ip6_dscp_ecn_decapsulate ;
 int ip6_tnl_rcv (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int ip4ip6_rcv(struct sk_buff *skb)
{
 return ip6_tnl_rcv(skb, ETH_P_IP, IPPROTO_IPIP,
      ip4ip6_dscp_ecn_decapsulate);
}
