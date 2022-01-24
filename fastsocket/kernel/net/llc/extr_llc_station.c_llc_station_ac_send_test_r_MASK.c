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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_proto; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	u8 mac_da[ETH_ALEN], dsap;
	int rc = 1;
	u32 data_size;
	struct sk_buff *nskb;

	/* The test request command is type U (llc_len = 3) */
	data_size = FUNC9(FUNC0(skb)->h_proto) - 3;
	nskb = FUNC2(NULL, skb->dev, LLC_PDU_TYPE_U, data_size);

	if (!nskb)
		goto out;
	rc = 0;
	FUNC4(skb, mac_da);
	FUNC5(skb, &dsap);
	FUNC6(nskb, LLC_PDU_TYPE_U, 0, dsap, LLC_PDU_RSP);
	FUNC7(nskb, skb);
	rc = FUNC3(nskb, skb->dev->dev_addr, mac_da);
	if (FUNC10(rc))
		goto free;
	FUNC8(nskb);
out:
	return rc;
free:
	FUNC1(skb);
	goto out;
}