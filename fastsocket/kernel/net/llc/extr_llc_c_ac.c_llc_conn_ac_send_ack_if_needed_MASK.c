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
struct llc_sock {int ack_pf; int ack_must_be_send; int first_pdu_Ns; int vR; int npta; } ;

/* Variables and functions */
 int LLC_2_SEQ_NBR_MODULO ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int*) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 

int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	u8 pf_bit;
	struct llc_sock *llc = FUNC3(sk);

	FUNC2(skb, &pf_bit);
	llc->ack_pf |= pf_bit & 1;
	if (!llc->ack_must_be_send) {
		llc->first_pdu_Ns = llc->vR;
		llc->ack_must_be_send = 1;
		llc->ack_pf = pf_bit & 1;
	}
	if (((llc->vR - llc->first_pdu_Ns + 1 + LLC_2_SEQ_NBR_MODULO)
			% LLC_2_SEQ_NBR_MODULO) >= llc->npta) {
		FUNC1(sk, skb);
		llc->ack_must_be_send	= 0;
		llc->ack_pf		= 0;
		FUNC0(sk, skb);
	}
	return 0;
}