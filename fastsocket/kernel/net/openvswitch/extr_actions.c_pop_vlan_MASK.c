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
struct sk_buff {scalar_t__ protocol; scalar_t__ len; scalar_t__ vlan_tci; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	__be16 tci;
	int err;

	if (FUNC3(FUNC6(skb))) {
		skb->vlan_tci = 0;
	} else {
		if (FUNC5(skb->protocol != FUNC2(ETH_P_8021Q) ||
			     skb->len < VLAN_ETH_HLEN))
			return 0;

		err = FUNC0(skb, &tci);
		if (err)
			return err;
	}
	/* move next vlan tag to hw accel tag */
	if (FUNC3(skb->protocol != FUNC2(ETH_P_8021Q) ||
		   skb->len < VLAN_ETH_HLEN))
		return 0;

	err = FUNC0(skb, &tci);
	if (FUNC5(err))
		return err;

	FUNC1(skb, FUNC4(tci));
	return 0;
}