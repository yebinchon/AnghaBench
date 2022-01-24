#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int k; int /*<<< orphan*/  pdu_unack_q; } ;

/* Variables and functions */
 struct llc_sock* FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sock *sk, struct sk_buff *skb)
{
	struct llc_sock *llc = FUNC0(sk);
	u8 unacked_pdu = FUNC1(&llc->pdu_unack_q);

	if (llc->k - unacked_pdu < 1)
		llc->k = 1;
	else
		llc->k -= unacked_pdu;
	return 0;
}