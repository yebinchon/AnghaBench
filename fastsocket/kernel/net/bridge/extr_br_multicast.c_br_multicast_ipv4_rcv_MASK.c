#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {unsigned int len; int ip_summed; int /*<<< orphan*/  csum; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct iphdr {int ihl; int version; scalar_t__ protocol; int daddr; int /*<<< orphan*/  tot_len; } ;
struct igmphdr {int type; int /*<<< orphan*/  group; } ;
struct TYPE_2__ {int mrouters_only; int igmp; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
#define  CHECKSUM_COMPLETE 134 
#define  CHECKSUM_NONE 133 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  IGMPV2_HOST_MEMBERSHIP_REPORT 132 
#define  IGMPV3_HOST_MEMBERSHIP_REPORT 131 
#define  IGMP_HOST_LEAVE_MESSAGE 130 
#define  IGMP_HOST_MEMBERSHIP_QUERY 129 
#define  IGMP_HOST_MEMBERSHIP_REPORT 128 
 int IGMP_LOCAL_GROUP ; 
 int IGMP_LOCAL_GROUP_MASK ; 
 scalar_t__ IPPROTO_IGMP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int FUNC3 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct igmphdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct iphdr* FUNC10 (struct sk_buff*) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int FUNC15 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct sk_buff* FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct net_bridge *br,
				 struct net_bridge_port *port,
				 struct sk_buff *skb)
{
	struct sk_buff *skb2 = skb;
	struct iphdr *iph;
	struct igmphdr *ih;
	unsigned len;
	unsigned offset;
	int err;

	/* We treat OOM as packet loss for now. */
	if (!FUNC14(skb, sizeof(*iph)))
		return -EINVAL;

	iph = FUNC10(skb);

	if (iph->ihl < 5 || iph->version != 4)
		return -EINVAL;

	if (!FUNC14(skb, FUNC11(skb)))
		return -EINVAL;

	iph = FUNC10(skb);

	if (FUNC20(FUNC9((u8 *)iph, iph->ihl)))
		return -EINVAL;

	if (iph->protocol != IPPROTO_IGMP) {
		if ((iph->daddr & IGMP_LOCAL_GROUP_MASK) != IGMP_LOCAL_GROUP)
			FUNC0(skb)->mrouters_only = 1;
		return 0;
	}

	len = FUNC13(iph->tot_len);
	if (skb->len < len || len < FUNC11(skb))
		return -EINVAL;

	if (skb->len > len) {
		skb2 = FUNC17(skb, GFP_ATOMIC);
		if (!skb2)
			return -ENOMEM;

		err = FUNC15(skb2, len);
		if (err)
			return err;
	}

	len -= FUNC11(skb2);
	offset = FUNC18(skb2) + FUNC11(skb2);
	FUNC1(skb2, offset);
	FUNC19(skb2);

	err = -EINVAL;
	if (!FUNC14(skb2, sizeof(*ih)))
		goto out;

	iph = FUNC10(skb2);

	switch (skb2->ip_summed) {
	case CHECKSUM_COMPLETE:
		if (!FUNC7(skb2->csum))
			break;
		/* fall through */
	case CHECKSUM_NONE:
		skb2->csum = 0;
		if (FUNC16(skb2))
			return -EINVAL;
	}

	err = 0;

	FUNC0(skb)->igmp = 1;
	ih = FUNC8(skb2);

	switch (ih->type) {
	case IGMP_HOST_MEMBERSHIP_REPORT:
	case IGMPV2_HOST_MEMBERSHIP_REPORT:
		FUNC0(skb)->mrouters_only = 1;
		err = FUNC3(br, port, ih->group);
		break;
	case IGMPV3_HOST_MEMBERSHIP_REPORT:
		err = FUNC4(br, port, skb2);
		break;
	case IGMP_HOST_MEMBERSHIP_QUERY:
		err = FUNC6(br, port, skb2);
		break;
	case IGMP_HOST_LEAVE_MESSAGE:
		FUNC5(br, port, ih->group);
		break;
	}

out:
	FUNC2(skb2, offset);
	if (skb2 != skb)
		FUNC12(skb2);
	return err;
}