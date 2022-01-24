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
struct sk_buff {TYPE_1__* dev; } ;
struct llc_xid_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLC_PDU_CMD ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int /*<<< orphan*/  LLC_XID_NULL_CLASS_2 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	int rc = 1;
	struct sk_buff *nskb = FUNC1(NULL, skb->dev, LLC_PDU_TYPE_U,
					       sizeof(struct llc_xid_info));

	if (!nskb)
		goto out;
	FUNC3(nskb, LLC_PDU_TYPE_U, 0, 0, LLC_PDU_CMD);
	FUNC4(nskb, LLC_XID_NULL_CLASS_2, 127);
	rc = FUNC2(nskb, skb->dev->dev_addr, skb->dev->dev_addr);
	if (FUNC6(rc))
		goto free;
	FUNC5(nskb);
out:
	return rc;
free:
	FUNC0(skb);
	goto out;
}