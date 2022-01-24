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
struct rxrpc_call {int acks_unacked; int acks_head; int acks_winsz; unsigned long* acks_window; int /*<<< orphan*/  acks_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*,int,unsigned long) ; 
 struct rxrpc_skb_priv* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct rxrpc_call *call)
{
	struct rxrpc_skb_priv *sp;
	struct sk_buff *txb;
	unsigned long *p_txb, resend_at;
	int loop;
	u8 resend;

	FUNC1("%d,%d,%d",
	       call->acks_tail, call->acks_unacked, call->acks_head);

	resend = 0;
	resend_at = 0;

	for (loop = call->acks_unacked;
	     loop != call->acks_head;
	     loop = (loop + 1) &  (call->acks_winsz - 1)
	     ) {
		p_txb = call->acks_window + loop;
		FUNC5();
		txb = (struct sk_buff *) (*p_txb & ~1);
		sp = FUNC4(txb);

		FUNC0(!(*p_txb & 1));

		if (sp->need_resend) {
			;
		} else if (FUNC6(jiffies + 1, sp->resend_at)) {
			sp->need_resend = 1;
			resend |= 1;
		} else if (resend & 2) {
			if (FUNC7(sp->resend_at, resend_at))
				resend_at = sp->resend_at;
		} else {
			resend_at = sp->resend_at;
			resend |= 2;
		}
	}

	FUNC3(call, resend, resend_at);
	FUNC2("");
}