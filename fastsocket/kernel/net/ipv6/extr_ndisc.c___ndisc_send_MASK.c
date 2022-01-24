#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct net_device*,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*,struct in6_addr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,struct neighbour*,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
			 struct neighbour *neigh,
			 const struct in6_addr *daddr,
			 const struct in6_addr *saddr,
			 struct icmp6hdr *icmp6h, const struct in6_addr *target,
			 int llinfo)
{
	struct sk_buff *skb;

	skb = FUNC0(dev, daddr, saddr, icmp6h, target, llinfo);
	if (!skb)
		return;

	FUNC1(skb, dev, neigh, daddr, saddr, icmp6h);
}