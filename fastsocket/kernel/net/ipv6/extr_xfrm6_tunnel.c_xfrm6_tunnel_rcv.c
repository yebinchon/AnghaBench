
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int saddr; } ;
typedef int __be32 ;


 int IPPROTO_IPV6 ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ xfrm6_rcv_spi (struct sk_buff*,int ,int ) ;
 int xfrm6_tunnel_spi_lookup (int *) ;

__attribute__((used)) static int xfrm6_tunnel_rcv(struct sk_buff *skb)
{
 struct ipv6hdr *iph = ipv6_hdr(skb);
 __be32 spi;

 spi = xfrm6_tunnel_spi_lookup((xfrm_address_t *)&iph->saddr);
 return xfrm6_rcv_spi(skb, IPPROTO_IPV6, spi) > 0 ? : 0;
}
