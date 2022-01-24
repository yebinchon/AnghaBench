#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct llc_sock {TYPE_2__ daddr; TYPE_3__* dev; int /*<<< orphan*/  vR; struct llc_sap* sap; } ;
struct TYPE_4__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_S ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sock*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	int rc = -ENOBUFS;
	struct llc_sock *llc = FUNC6(sk);
	struct sk_buff *nskb = FUNC1(sk, llc->dev, LLC_PDU_TYPE_S, 0);

	if (nskb) {
		struct llc_sap *sap = llc->sap;

		FUNC4(nskb, LLC_PDU_TYPE_S, sap->laddr.lsap,
				    llc->daddr.lsap, LLC_PDU_RSP);
		FUNC5(nskb, 1, llc->vR);
		rc = FUNC3(nskb, llc->dev->dev_addr, llc->daddr.mac);
		if (FUNC7(rc))
			goto free;
		FUNC2(sk, nskb);
	}
out:
	return rc;
free:
	FUNC0(nskb);
	goto out;
}