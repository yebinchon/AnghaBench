
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; void* protocol; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int nexthdr; int daddr; int saddr; int hop_limit; void* payload_len; } ;
struct ipv6_pinfo {int hop_limit; } ;
struct in6_addr {int dummy; } ;
typedef int __be32 ;


 int ETH_P_IPV6 ;
 int htonl (int) ;
 void* htons (int) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ipv6_addr_copy (int *,struct in6_addr const*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

int ip6_nd_hdr(struct sock *sk, struct sk_buff *skb, struct net_device *dev,
        const struct in6_addr *saddr, const struct in6_addr *daddr,
        int proto, int len)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6hdr *hdr;
 int totlen;

 skb->protocol = htons(ETH_P_IPV6);
 skb->dev = dev;

 totlen = len + sizeof(struct ipv6hdr);

 skb_reset_network_header(skb);
 skb_put(skb, sizeof(struct ipv6hdr));
 hdr = ipv6_hdr(skb);

 *(__be32*)hdr = htonl(0x60000000);

 hdr->payload_len = htons(len);
 hdr->nexthdr = proto;
 hdr->hop_limit = np->hop_limit;

 ipv6_addr_copy(&hdr->saddr, saddr);
 ipv6_addr_copy(&hdr->daddr, daddr);

 return 0;
}
