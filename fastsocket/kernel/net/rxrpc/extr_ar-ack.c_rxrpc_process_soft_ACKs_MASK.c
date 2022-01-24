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
struct sk_buff {int dummy; } ;
struct rxrpc_skb_priv {int need_resend; unsigned long resend_at; } ;
struct rxrpc_call {int acks_head; int acks_tail; int acks_winsz; unsigned long* acks_window; int acks_unacked; int /*<<< orphan*/  acks_hard; } ;
struct rxrpc_ackpacket {int nAcks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int EPROTO ; 
#define  RXRPC_ACK_TYPE_ACK 129 
#define  RXRPC_ACK_TYPE_NACK 128 
 int RXRPC_MAXACKS ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*,int,unsigned long) ; 
 struct rxrpc_skb_priv* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct rxrpc_call *call,
				   struct rxrpc_ackpacket *ack,
				   struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp;
	struct sk_buff *txb;
	unsigned long *p_txb, resend_at;
	int loop;
	u8 sacks[RXRPC_MAXACKS], resend;

	FUNC2("{%d,%d},{%d},",
	       call->acks_hard,
	       FUNC0(call->acks_head, call->acks_tail, call->acks_winsz),
	       ack->nAcks);

	if (FUNC6(skb, 0, sacks, ack->nAcks) < 0)
		goto protocol_error;

	resend = 0;
	resend_at = 0;
	for (loop = 0; loop < ack->nAcks; loop++) {
		p_txb = call->acks_window;
		p_txb += (call->acks_tail + loop) & (call->acks_winsz - 1);
		FUNC8();
		txb = (struct sk_buff *) (*p_txb & ~1);
		sp = FUNC5(txb);

		switch (sacks[loop]) {
		case RXRPC_ACK_TYPE_ACK:
			sp->need_resend = 0;
			*p_txb |= 1;
			break;
		case RXRPC_ACK_TYPE_NACK:
			sp->need_resend = 1;
			*p_txb &= ~1;
			resend = 1;
			break;
		default:
			FUNC1("Unsupported ACK type %d", sacks[loop]);
			goto protocol_error;
		}
	}

	FUNC7();
	call->acks_unacked = (call->acks_tail + loop) & (call->acks_winsz - 1);

	/* anything not explicitly ACK'd is implicitly NACK'd, but may just not
	 * have been received or processed yet by the far end */
	for (loop = call->acks_unacked;
	     loop != call->acks_head;
	     loop = (loop + 1) &  (call->acks_winsz - 1)
	     ) {
		p_txb = call->acks_window + loop;
		FUNC8();
		txb = (struct sk_buff *) (*p_txb & ~1);
		sp = FUNC5(txb);

		if (*p_txb & 1) {
			/* packet must have been discarded */
			sp->need_resend = 1;
			*p_txb &= ~1;
			resend |= 1;
		} else if (sp->need_resend) {
			;
		} else if (FUNC9(jiffies + 1, sp->resend_at)) {
			sp->need_resend = 1;
			resend |= 1;
		} else if (resend & 2) {
			if (FUNC10(sp->resend_at, resend_at))
				resend_at = sp->resend_at;
		} else {
			resend_at = sp->resend_at;
			resend |= 2;
		}
	}

	FUNC4(call, resend, resend_at);
	FUNC3(" = 0");
	return 0;

protocol_error:
	FUNC3(" = -EPROTO");
	return -EPROTO;
}