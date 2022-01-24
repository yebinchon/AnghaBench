#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/  protocol; } ;
struct net_bridge_port {TYPE_1__* br; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  group_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  LLC_PDU_CMD ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 scalar_t__ LLC_RESERVE ; 
 int /*<<< orphan*/  LLC_SAP_BSPAN ; 
 int /*<<< orphan*/  NF_BR_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_BRIDGE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  dev_queue_xmit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct net_bridge_port *p,
			 const unsigned char *data, int length)
{
	struct sk_buff *skb;

	skb = FUNC2(length+LLC_RESERVE);
	if (!skb)
		return;

	skb->dev = p->dev;
	skb->protocol = FUNC3(ETH_P_802_2);

	FUNC8(skb, LLC_RESERVE);
	FUNC7(FUNC1(skb, length), data, length);

	FUNC5(skb, LLC_PDU_TYPE_U, LLC_SAP_BSPAN,
			    LLC_SAP_BSPAN, LLC_PDU_CMD);
	FUNC6(skb);

	FUNC4(skb, p->dev->dev_addr, p->br->group_addr);

	FUNC0(PF_BRIDGE, NF_BR_LOCAL_OUT, skb, NULL, skb->dev,
		dev_queue_xmit);
}