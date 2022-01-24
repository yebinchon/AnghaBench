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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {TYPE_2__* sap; } ;
struct llc_conn_state_ev {int /*<<< orphan*/  prim_type; int /*<<< orphan*/  prim; int /*<<< orphan*/  type; } ;
struct llc_addr {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct TYPE_3__ {int /*<<< orphan*/  lsap; } ;
struct TYPE_4__ {TYPE_1__ laddr; } ;

/* Variables and functions */
 int EISCONN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LLC_CONN_EV_TYPE_PRIM ; 
 int /*<<< orphan*/  LLC_CONN_PRIM ; 
 int /*<<< orphan*/  LLC_PRIM_TYPE_REQ ; 
 scalar_t__ TCP_ESTABLISHED ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct llc_conn_state_ev* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC3 (TYPE_2__*,struct llc_addr*,struct llc_addr*) ; 
 struct llc_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

int FUNC9(struct sock *sk, u8 *lmac, u8 *dmac, u8 dsap)
{
	int rc = -EISCONN;
	struct llc_addr laddr, daddr;
	struct sk_buff *skb;
	struct llc_sock *llc = FUNC4(sk);
	struct sock *existing;

	laddr.lsap = llc->sap->laddr.lsap;
	daddr.lsap = dsap;
	FUNC5(daddr.mac, dmac, sizeof(daddr.mac));
	FUNC5(laddr.mac, lmac, sizeof(laddr.mac));
	existing = FUNC3(llc->sap, &daddr, &laddr);
	if (existing) {
		if (existing->sk_state == TCP_ESTABLISHED) {
			sk = existing;
			goto out_put;
		} else
			FUNC8(existing);
	}
	FUNC7(sk);
	rc = -ENOMEM;
	skb = FUNC0(0, GFP_ATOMIC);
	if (skb) {
		struct llc_conn_state_ev *ev = FUNC1(skb);

		ev->type      = LLC_CONN_EV_TYPE_PRIM;
		ev->prim      = LLC_CONN_PRIM;
		ev->prim_type = LLC_PRIM_TYPE_REQ;
		FUNC6(skb, sk);
		rc = FUNC2(sk, skb);
	}
out_put:
	FUNC8(sk);
	return rc;
}