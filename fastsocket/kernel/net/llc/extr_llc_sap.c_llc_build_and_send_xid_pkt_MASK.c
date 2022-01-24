#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct TYPE_7__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct llc_sap_state_ev {int /*<<< orphan*/  prim_type; int /*<<< orphan*/  prim; int /*<<< orphan*/  type; TYPE_2__ daddr; TYPE_3__ saddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_4__ laddr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFHWADDRLEN ; 
 int /*<<< orphan*/  LLC_PRIM_TYPE_REQ ; 
 int /*<<< orphan*/  LLC_SAP_EV_TYPE_PRIM ; 
 int /*<<< orphan*/  LLC_XID_PRIM ; 
 struct llc_sap_state_ev* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct llc_sap*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct llc_sap *sap, struct sk_buff *skb,
				u8 *dmac, u8 dsap)
{
	struct llc_sap_state_ev *ev = FUNC0(skb);

	ev->saddr.lsap = sap->laddr.lsap;
	ev->daddr.lsap = dsap;
	FUNC2(ev->saddr.mac, skb->dev->dev_addr, IFHWADDRLEN);
	FUNC2(ev->daddr.mac, dmac, IFHWADDRLEN);

	ev->type      = LLC_SAP_EV_TYPE_PRIM;
	ev->prim      = LLC_XID_PRIM;
	ev->prim_type = LLC_PRIM_TYPE_REQ;
	FUNC1(sap, skb);
}