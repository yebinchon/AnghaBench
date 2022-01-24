#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_1__* dev; } ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  NFPROTO_BRIDGE ; 
 int /*<<< orphan*/  NF_BR_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_forward_finish ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port const*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const struct net_bridge_port *to, struct sk_buff *skb)
{
	skb->dev = to->dev;

	if (FUNC7(FUNC3(to->dev))) {
		if (FUNC4(skb) > skb->dev->mtu && !FUNC5(skb))
			FUNC2(skb);
		else {
			FUNC6(skb, ETH_HLEN);
			FUNC1(to, skb);
		}
		return;
	}

	FUNC0(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT, skb, NULL, skb->dev,
		br_forward_finish);
}