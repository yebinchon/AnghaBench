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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {scalar_t__ protocol; scalar_t__ pkt_type; int /*<<< orphan*/  dev; struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {int /*<<< orphan*/  physoutdev; int /*<<< orphan*/  mask; } ;
struct net_device {int dummy; } ;
struct inet_skb_parm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRNF_BRIDGED ; 
 int /*<<< orphan*/  BRNF_PKT_TYPE ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,struct net_device*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 unsigned int NF_STOLEN ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  br_nf_forward_finish ; 
 struct net_device* FUNC6 (struct net_device const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC11(unsigned int hook, struct sk_buff *skb,
				     const struct net_device *in,
				     const struct net_device *out,
				     int (*okfn)(struct sk_buff *))
{
	struct nf_bridge_info *nf_bridge;
	struct net_device *parent;
	u_int8_t pf;

	if (!skb->nf_bridge)
		return NF_ACCEPT;

	/* Need exclusive nf_bridge_info since we might have multiple
	 * different physoutdevs. */
	if (!FUNC10(skb))
		return NF_DROP;

	parent = FUNC6(out);
	if (!parent)
		return NF_DROP;

	if (skb->protocol == FUNC7(ETH_P_IP) || FUNC3(skb) ||
	    FUNC1(skb))
		pf = PF_INET;
	else if (skb->protocol == FUNC7(ETH_P_IPV6) || FUNC4(skb) ||
		 FUNC2(skb))
		pf = PF_INET6;
	else
		return NF_ACCEPT;

	FUNC9(skb);

	nf_bridge = skb->nf_bridge;
	if (skb->pkt_type == PACKET_OTHERHOST) {
		skb->pkt_type = PACKET_HOST;
		nf_bridge->mask |= BRNF_PKT_TYPE;
	}

	/* BUG: Should really parse the IP options here. */
	FUNC8(FUNC0(skb), 0, sizeof(struct inet_skb_parm));

	/* The physdev module checks on this */
	nf_bridge->mask |= BRNF_BRIDGED;
	nf_bridge->physoutdev = skb->dev;

	FUNC5(pf, NF_INET_FORWARD, skb, FUNC6(in), parent,
		br_nf_forward_finish);

	return NF_STOLEN;
}