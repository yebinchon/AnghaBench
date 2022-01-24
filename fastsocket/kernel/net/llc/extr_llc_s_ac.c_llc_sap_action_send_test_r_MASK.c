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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int FUNC0 (struct sk_buff*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct llc_sap *sap, struct sk_buff *skb)
{
	u8 mac_da[ETH_ALEN], mac_sa[ETH_ALEN], dsap;
	struct sk_buff *nskb;
	int rc = 1;
	u32 data_size;

	FUNC6(skb, mac_da);
	FUNC5(skb, mac_sa);
	FUNC7(skb, &dsap);

	/* The test request command is type U (llc_len = 3) */
	data_size = FUNC10(FUNC1(skb)->h_proto) - 3;
	nskb = FUNC3(NULL, skb->dev, LLC_PDU_TYPE_U, data_size);
	if (!nskb)
		goto out;
	FUNC8(nskb, LLC_PDU_TYPE_U, sap->laddr.lsap, dsap,
			    LLC_PDU_RSP);
	FUNC9(nskb, skb);
	rc = FUNC4(nskb, mac_sa, mac_da);
	if (FUNC2(!rc))
		rc = FUNC0(nskb);
out:
	return rc;
}