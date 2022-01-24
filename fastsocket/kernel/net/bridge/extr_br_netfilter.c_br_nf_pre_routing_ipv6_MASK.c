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
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  nf_bridge; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int version; scalar_t__ nexthdr; int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 scalar_t__ NEXTHDR_HOP ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  br_nf_pre_routing_finish_ipv6 ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC9(unsigned int hook,
					   struct sk_buff *skb,
					   const struct net_device *in,
					   const struct net_device *out,
					   int (*okfn)(struct sk_buff *))
{
	struct ipv6hdr *hdr;
	u32 pkt_len;

	if (skb->len < sizeof(struct ipv6hdr))
		goto inhdr_error;

	if (!FUNC6(skb, sizeof(struct ipv6hdr)))
		goto inhdr_error;

	hdr = FUNC2(skb);

	if (hdr->version != 6)
		goto inhdr_error;

	pkt_len = FUNC5(hdr->payload_len);

	if (pkt_len || hdr->nexthdr != NEXTHDR_HOP) {
		if (pkt_len + sizeof(struct ipv6hdr) > skb->len)
			goto inhdr_error;
		if (FUNC7(skb, pkt_len + sizeof(struct ipv6hdr)))
			goto inhdr_error;
	}
	if (hdr->nexthdr == NEXTHDR_HOP && FUNC1(skb))
		goto inhdr_error;

	FUNC4(skb->nf_bridge);
	if (!FUNC3(skb))
		return NF_DROP;
	if (!FUNC8(skb))
		return NF_DROP;

	FUNC0(PF_INET6, NF_INET_PRE_ROUTING, skb, skb->dev, NULL,
		br_nf_pre_routing_finish_ipv6);

	return NF_STOLEN;

inhdr_error:
	return NF_DROP;
}