
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;
struct iphdr {int tos; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ INET_ECN_is_ce (int ) ;
 int IP6_ECN_set_ce (int ) ;
 int IP_ECN_set_ce (int ) ;
 scalar_t__ htons (int ) ;
 int ip_hdr (struct sk_buff*) ;
 int ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void ipgre_ecn_decapsulate(const struct iphdr *iph, struct sk_buff *skb)
{
 if (INET_ECN_is_ce(iph->tos)) {
  if (skb->protocol == htons(ETH_P_IP)) {
   IP_ECN_set_ce(ip_hdr(skb));
  } else if (skb->protocol == htons(ETH_P_IPV6)) {
   IP6_ECN_set_ce(ipv6_hdr(skb));
  }
 }
}
