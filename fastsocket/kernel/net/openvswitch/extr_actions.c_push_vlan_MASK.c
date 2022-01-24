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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ data; int /*<<< orphan*/  csum; } ;
struct ovs_action_push_vlan {int /*<<< orphan*/  vlan_tci; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  VLAN_HLEN ; 
 int VLAN_TAG_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, const struct ovs_action_push_vlan *vlan)
{
	if (FUNC5(FUNC7(skb))) {
		u16 current_tag;

		/* push down current VLAN tag */
		current_tag = FUNC6(skb);

		if (!FUNC1(skb, current_tag))
			return -ENOMEM;

		if (skb->ip_summed == CHECKSUM_COMPLETE)
			skb->csum = FUNC2(skb->csum, FUNC3(skb->data
					+ (2 * ETH_ALEN), VLAN_HLEN, 0));

	}
	FUNC0(skb, FUNC4(vlan->vlan_tci) & ~VLAN_TAG_PRESENT);
	return 0;
}