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
struct sk_buff {TYPE_1__* dev; } ;
struct llc_xid_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int /*<<< orphan*/  LLC_XID_NULL_CLASS_2 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb)
{
	u8 mac_da[ETH_ALEN], dsap;
	int rc = 1;
	struct sk_buff *nskb = FUNC1(NULL, skb->dev, LLC_PDU_TYPE_U,
					       sizeof(struct llc_xid_info));

	if (!nskb)
		goto out;
	rc = 0;
	FUNC3(skb, mac_da);
	FUNC4(skb, &dsap);
	FUNC5(nskb, LLC_PDU_TYPE_U, 0, dsap, LLC_PDU_RSP);
	FUNC6(nskb, LLC_XID_NULL_CLASS_2, 127);
	rc = FUNC2(nskb, skb->dev->dev_addr, mac_da);
	if (FUNC8(rc))
		goto free;
	FUNC7(nskb);
out:
	return rc;
free:
	FUNC0(skb);
	goto out;
}