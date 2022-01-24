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
struct sk_buff {int transport_header; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_skb_parm {int hop; int nhoff; } ;

/* Variables and functions */
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  tlvprochopopt_lst ; 

int FUNC5(struct sk_buff *skb)
{
	struct inet6_skb_parm *opt = FUNC0(skb);

	/*
	 * skb_network_header(skb) is equal to skb->data, and
	 * skb_network_header_len(skb) is always equal to
	 * sizeof(struct ipv6hdr) by definition of
	 * hop-by-hop options.
	 */
	if (!FUNC3(skb, sizeof(struct ipv6hdr) + 8) ||
	    !FUNC3(skb, (sizeof(struct ipv6hdr) +
				 ((FUNC4(skb)[1] + 1) << 3)))) {
		FUNC2(skb);
		return -1;
	}

	opt->hop = sizeof(struct ipv6hdr);
	if (FUNC1(tlvprochopopt_lst, skb)) {
		skb->transport_header += (FUNC4(skb)[1] + 1) << 3;
		opt = FUNC0(skb);
		opt->nhoff = sizeof(struct ipv6hdr);
		return 1;
	}
	return -1;
}