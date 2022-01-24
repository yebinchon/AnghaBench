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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct TYPE_3__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct llc_sap_state_ev {TYPE_2__ daddr; TYPE_1__ saddr; } ;
struct llc_sap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLC_PDU_CMD ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct llc_sap_state_ev* FUNC5 (struct sk_buff*) ; 

int FUNC6(struct llc_sap *sap, struct sk_buff *skb)
{
	struct llc_sap_state_ev *ev = FUNC5(skb);
	int rc;

	FUNC3(skb, LLC_PDU_TYPE_U, ev->saddr.lsap,
			    ev->daddr.lsap, LLC_PDU_CMD);
	FUNC4(skb);
	rc = FUNC2(skb, ev->saddr.mac, ev->daddr.mac);
	if (FUNC1(!rc))
		rc = FUNC0(skb);
	return rc;
}