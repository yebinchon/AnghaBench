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
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_2__* sdata; TYPE_1__ sta; } ;
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dev; } ;
struct iapp_layer2_update {int ssap; int control; int* xid_info; scalar_t__ dsap; int /*<<< orphan*/  len; int /*<<< orphan*/  sa; int /*<<< orphan*/  da; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct sta_info *sta)
{
	struct iapp_layer2_update *msg;
	struct sk_buff *skb;

	/* Send Level 2 Update Frame to update forwarding tables in layer 2
	 * bridge devices */

	skb = FUNC0(sizeof(*msg));
	if (!skb)
		return;
	msg = (struct iapp_layer2_update *)FUNC7(skb, sizeof(*msg));

	/* 802.2 Type 1 Logical Link Control (LLC) Exchange Identifier (XID)
	 * Update response frame; IEEE Std 802.2-1998, 5.4.1.2.1 */

	FUNC1(msg->da);
	FUNC4(msg->sa, sta->sta.addr, ETH_ALEN);
	msg->len = FUNC3(6);
	msg->dsap = 0;
	msg->ssap = 0x01;	/* NULL LSAP, CR Bit: Response */
	msg->control = 0xaf;	/* XID response lsb.1111F101.
				 * F=0 (no poll command; unsolicited frame) */
	msg->xid_info[0] = 0x81;	/* XID format identifier */
	msg->xid_info[1] = 1;	/* LLC types/classes: Type 1 LLC */
	msg->xid_info[2] = 0;	/* XID sender's receive window size (RW) */

	skb->dev = sta->sdata->dev;
	skb->protocol = FUNC2(skb, sta->sdata->dev);
	FUNC5(skb->cb, 0, sizeof(skb->cb));
	FUNC6(skb);
}