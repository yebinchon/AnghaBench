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
struct sk_buff {scalar_t__ protocol; int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  nf_bridge; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; int version; int /*<<< orphan*/  tot_len; } ;
struct inet_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  br_nf_pre_routing_finish ; 
 unsigned int FUNC6 (unsigned int,struct sk_buff*,struct net_device const*,struct net_device const*,int (*) (struct sk_buff*)) ; 
 int /*<<< orphan*/  brnf_call_ip6tables ; 
 int /*<<< orphan*/  brnf_call_iptables ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct iphdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static unsigned int FUNC21(unsigned int hook, struct sk_buff *skb,
				      const struct net_device *in,
				      const struct net_device *out,
				      int (*okfn)(struct sk_buff *))
{
	struct iphdr *iph;
	__u32 len = FUNC12(skb);

	if (FUNC20(!FUNC16(skb, len)))
		goto out;

	if (skb->protocol == FUNC7(ETH_P_IPV6) || FUNC4(skb) ||
	    FUNC2(skb)) {
#ifdef CONFIG_SYSCTL
		if (!brnf_call_ip6tables)
			return NF_ACCEPT;
#endif
		FUNC13(skb);
		return FUNC6(hook, skb, in, out, okfn);
	}
#ifdef CONFIG_SYSCTL
	if (!brnf_call_iptables)
		return NF_ACCEPT;
#endif

	if (skb->protocol != FUNC7(ETH_P_IP) && !FUNC3(skb) &&
	    !FUNC1(skb))
		return NF_ACCEPT;

	FUNC13(skb);

	if (!FUNC16(skb, sizeof(struct iphdr)))
		goto inhdr_error;

	iph = FUNC9(skb);
	if (iph->ihl < 5 || iph->version != 4)
		goto inhdr_error;

	if (!FUNC16(skb, 4 * iph->ihl))
		goto inhdr_error;

	iph = FUNC9(skb);
	if (FUNC8((__u8 *) iph, iph->ihl) != 0)
		goto inhdr_error;

	len = FUNC15(iph->tot_len);
	if (skb->len < len || len < 4 * iph->ihl)
		goto inhdr_error;

	FUNC17(skb, len);

	/* BUG: Should really parse the IP options here. */
	FUNC10(FUNC0(skb), 0, sizeof(struct inet_skb_parm));

	FUNC14(skb->nf_bridge);
	if (!FUNC11(skb))
		return NF_DROP;
	if (!FUNC18(skb))
		return NF_DROP;
	FUNC19(skb);

	FUNC5(PF_INET, NF_INET_PRE_ROUTING, skb, skb->dev, NULL,
		br_nf_pre_routing_finish);

	return NF_STOLEN;

inhdr_error:
//      IP_INC_STATS_BH(IpInHdrErrors);
out:
	return NF_DROP;
}