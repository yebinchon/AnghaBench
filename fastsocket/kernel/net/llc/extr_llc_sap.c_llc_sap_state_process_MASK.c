#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_1__* sk; } ;
struct llc_sap_state_ev {scalar_t__ ind_cfm_flag; int /*<<< orphan*/  prim; } ;
struct llc_sap {int dummy; } ;
struct TYPE_3__ {scalar_t__ sk_state; } ;

/* Variables and functions */
 scalar_t__ LLC_IND ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct llc_sap_state_ev* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct llc_sap*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct llc_sap *sap, struct sk_buff *skb)
{
	struct llc_sap_state_ev *ev = FUNC1(skb);

	/*
	 * We have to hold the skb, because llc_sap_next_state
	 * will kfree it in the sending path and we need to
	 * look at the skb->cb, where we encode llc_sap_state_ev.
	 */
	FUNC4(skb);
	ev->ind_cfm_flag = 0;
	FUNC2(sap, skb);
	if (ev->ind_cfm_flag == LLC_IND) {
		if (skb->sk->sk_state == TCP_LISTEN)
			FUNC0(skb);
		else {
			FUNC3(skb->sk, skb, ev->prim);

			/* queue skb to the user. */
			if (FUNC5(skb->sk, skb))
				FUNC0(skb);
		}
	}
	FUNC0(skb);
}