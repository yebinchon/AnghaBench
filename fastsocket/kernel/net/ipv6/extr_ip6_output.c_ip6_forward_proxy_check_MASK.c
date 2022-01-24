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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {scalar_t__ nexthdr; int /*<<< orphan*/  daddr; } ;
struct icmp6hdr {int icmp6_type; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_ICMPV6 ; 
 int IPV6_ADDR_LINKLOCAL ; 
#define  NDISC_NEIGHBOUR_ADVERTISEMENT 132 
#define  NDISC_NEIGHBOUR_SOLICITATION 131 
#define  NDISC_REDIRECT 130 
#define  NDISC_ROUTER_ADVERTISEMENT 129 
#define  NDISC_ROUTER_SOLICITATION 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct ipv6hdr *hdr = FUNC3(skb);
	u8 nexthdr = hdr->nexthdr;
	int offset;

	if (FUNC2(nexthdr)) {
		offset = FUNC4(skb, sizeof(*hdr), &nexthdr);
		if (offset < 0)
			return 0;
	} else
		offset = sizeof(struct ipv6hdr);

	if (nexthdr == IPPROTO_ICMPV6) {
		struct icmp6hdr *icmp6;

		if (!FUNC5(skb, (FUNC6(skb) +
					 offset + 1 - skb->data)))
			return 0;

		icmp6 = (struct icmp6hdr *)(FUNC6(skb) + offset);

		switch (icmp6->icmp6_type) {
		case NDISC_ROUTER_SOLICITATION:
		case NDISC_ROUTER_ADVERTISEMENT:
		case NDISC_NEIGHBOUR_SOLICITATION:
		case NDISC_NEIGHBOUR_ADVERTISEMENT:
		case NDISC_REDIRECT:
			/* For reaction involving unicast neighbor discovery
			 * message destined to the proxied address, pass it to
			 * input function.
			 */
			return 1;
		default:
			break;
		}
	}

	/*
	 * The proxying router can't forward traffic sent to a link-local
	 * address, so signal the sender and discard the packet. This
	 * behavior is clarified by the MIPv6 specification.
	 */
	if (FUNC1(&hdr->daddr) & IPV6_ADDR_LINKLOCAL) {
		FUNC0(skb);
		return -1;
	}

	return 0;
}