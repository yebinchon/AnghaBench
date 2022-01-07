
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int tos; } ;


 scalar_t__ INET_ECN_is_ce (int ) ;
 int IP6_ECN_set_ce (int ) ;
 int ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void ipip6_ecn_decapsulate(struct iphdr *iph, struct sk_buff *skb)
{
 if (INET_ECN_is_ce(iph->tos))
  IP6_ECN_set_ce(ipv6_hdr(skb));
}
