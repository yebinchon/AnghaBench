
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int dummy; } ;


 struct sk_buff* ndisc_build_skb (struct net_device*,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*,struct in6_addr const*,int) ;
 int ndisc_send_skb (struct sk_buff*,struct net_device*,struct neighbour*,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*) ;

__attribute__((used)) static void __ndisc_send(struct net_device *dev,
    struct neighbour *neigh,
    const struct in6_addr *daddr,
    const struct in6_addr *saddr,
    struct icmp6hdr *icmp6h, const struct in6_addr *target,
    int llinfo)
{
 struct sk_buff *skb;

 skb = ndisc_build_skb(dev, daddr, saddr, icmp6h, target, llinfo);
 if (!skb)
  return;

 ndisc_send_skb(skb, dev, neigh, daddr, saddr, icmp6h);
}
