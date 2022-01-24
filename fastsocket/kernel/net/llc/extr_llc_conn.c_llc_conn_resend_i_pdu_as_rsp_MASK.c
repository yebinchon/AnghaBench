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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int vS; int /*<<< orphan*/  pdu_unack_q; } ;
struct llc_pdu_sn {int dummy; } ;

/* Variables and functions */
 int LLC_2_SEQ_NBR_MODULO ; 
 int FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 struct llc_pdu_sn* FUNC5 (struct sk_buff*) ; 
 struct llc_sock* FUNC6 (struct sock*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC9(struct sock *sk, u8 nr, u8 first_f_bit)
{
	struct sk_buff *skb;
	u16 nbr_unack_pdus;
	struct llc_sock *llc = FUNC6(sk);
	u8 howmany_resend = 0;

	FUNC1(sk, nr, &nbr_unack_pdus);
	if (!nbr_unack_pdus)
		goto out;
	/*
	 * Process unack PDUs only if unack queue is not empty; remove
	 * appropriate PDUs, fix them up, and put them on mac_pdu_q
	 */
	while ((skb = FUNC7(&llc->pdu_unack_q)) != NULL) {
		struct llc_pdu_sn *pdu = FUNC5(skb);

		FUNC3(skb, LLC_PDU_RSP);
		FUNC4(skb, first_f_bit);
		FUNC8(&sk->sk_write_queue, skb);
		first_f_bit = 0;
		llc->vS = FUNC0(pdu);
		howmany_resend++;
	}
	if (howmany_resend > 0)
		llc->vS = (llc->vS + 1) % LLC_2_SEQ_NBR_MODULO;
	/* any PDUs to re-send are queued up; start sending to MAC */
	FUNC2(sk);
out:;
}