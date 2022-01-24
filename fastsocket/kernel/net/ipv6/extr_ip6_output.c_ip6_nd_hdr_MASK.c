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
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; void* protocol; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int nexthdr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  hop_limit; void* payload_len; } ;
struct ipv6_pinfo {int /*<<< orphan*/  hop_limit; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

int FUNC7(struct sock *sk, struct sk_buff *skb, struct net_device *dev,
	       const struct in6_addr *saddr, const struct in6_addr *daddr,
	       int proto, int len)
{
	struct ipv6_pinfo *np = FUNC2(sk);
	struct ipv6hdr *hdr;
	int totlen;

	skb->protocol = FUNC1(ETH_P_IPV6);
	skb->dev = dev;

	totlen = len + sizeof(struct ipv6hdr);

	FUNC6(skb);
	FUNC5(skb, sizeof(struct ipv6hdr));
	hdr = FUNC4(skb);

	*(__be32*)hdr = FUNC0(0x60000000);

	hdr->payload_len = FUNC1(len);
	hdr->nexthdr = proto;
	hdr->hop_limit = np->hop_limit;

	FUNC3(&hdr->saddr, saddr);
	FUNC3(&hdr->daddr, daddr);

	return 0;
}