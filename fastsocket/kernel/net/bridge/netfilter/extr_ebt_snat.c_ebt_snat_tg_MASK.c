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
struct xt_target_param {struct ebt_nat_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_nat_info {int target; int /*<<< orphan*/  mac; } ;
struct arphdr {scalar_t__ ar_hln; } ;
typedef  int /*<<< orphan*/  _ah ;
struct TYPE_2__ {scalar_t__ h_proto; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 unsigned int EBT_DROP ; 
 unsigned int EBT_VERDICT_BITS ; 
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int NAT_ARP_BIT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct arphdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct arphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static unsigned int
FUNC6(struct sk_buff *skb, const struct xt_target_param *par)
{
	const struct ebt_nat_info *info = par->targinfo;

	if (!FUNC4(skb, 0))
		return EBT_DROP;

	FUNC2(FUNC0(skb)->h_source, info->mac, ETH_ALEN);
	if (!(info->target & NAT_ARP_BIT) &&
	    FUNC0(skb)->h_proto == FUNC1(ETH_P_ARP)) {
		const struct arphdr *ap;
		struct arphdr _ah;

		ap = FUNC3(skb, 0, sizeof(_ah), &_ah);
		if (ap == NULL)
			return EBT_DROP;
		if (ap->ar_hln != ETH_ALEN)
			goto out;
		if (FUNC5(skb, sizeof(_ah), info->mac,ETH_ALEN))
			return EBT_DROP;
	}
out:
	return info->target | ~EBT_VERDICT_BITS;
}