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
typedef  scalar_t__ u8 ;
struct sockaddr_llc {int sllc_test; int sllc_xid; int sllc_ua; int /*<<< orphan*/  sllc_sap; int /*<<< orphan*/  sllc_mac; int /*<<< orphan*/  sllc_arphrd; int /*<<< orphan*/  sllc_family; } ;
struct sock {int /*<<< orphan*/  sk_family; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ LLC_DATAUNIT_PRIM ; 
 scalar_t__ LLC_TEST_PRIM ; 
 scalar_t__ LLC_XID_PRIM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sockaddr_llc* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_llc*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct sock *sk, struct sk_buff* skb, u8 prim)
{
	struct sockaddr_llc *addr;

       /* save primitive for use by the user. */
	addr		  = FUNC2(skb);

	FUNC3(addr, 0, sizeof(*addr));
	addr->sllc_family = sk->sk_family;
	addr->sllc_arphrd = skb->dev->type;
	addr->sllc_test   = prim == LLC_TEST_PRIM;
	addr->sllc_xid    = prim == LLC_XID_PRIM;
	addr->sllc_ua     = prim == LLC_DATAUNIT_PRIM;
	FUNC0(skb, addr->sllc_mac);
	FUNC1(skb, &addr->sllc_sap);
}