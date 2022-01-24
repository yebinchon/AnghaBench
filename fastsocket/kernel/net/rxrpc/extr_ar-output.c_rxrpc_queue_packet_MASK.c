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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {int need_resend; scalar_t__ resend_at; TYPE_1__ hdr; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct rxrpc_call {size_t acks_head; unsigned long* acks_window; int acks_winsz; int state; TYPE_2__* conn; int /*<<< orphan*/  ack_timer; TYPE_3__ resend_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  state_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int HZ ; 
 int RXRPC_CALL_CLIENT_AWAIT_REPLY ; 
#define  RXRPC_CALL_CLIENT_SEND_REQUEST 130 
 int /*<<< orphan*/  RXRPC_CALL_RUN_RTIMER ; 
#define  RXRPC_CALL_SERVER_ACK_REQUEST 129 
 int RXRPC_CALL_SERVER_AWAIT_ACK ; 
#define  RXRPC_CALL_SERVER_SEND_REPLY 128 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sk_buff*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*) ; 
 int rxrpc_resend_timeout ; 
 int FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct rxrpc_skb_priv* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct rxrpc_call *call, struct sk_buff *skb,
			       bool last)
{
	struct rxrpc_skb_priv *sp = FUNC9(skb);
	int ret;

	FUNC3("queue skb %p [%d]", skb, call->acks_head);

	FUNC0(call->acks_window != NULL);
	call->acks_window[call->acks_head] = (unsigned long) skb;
	FUNC10();
	call->acks_head = (call->acks_head + 1) & (call->acks_winsz - 1);

	if (last || call->state == RXRPC_CALL_SERVER_ACK_REQUEST) {
		FUNC1("________awaiting reply/ACK__________");
		FUNC13(&call->state_lock);
		switch (call->state) {
		case RXRPC_CALL_CLIENT_SEND_REQUEST:
			call->state = RXRPC_CALL_CLIENT_AWAIT_REPLY;
			break;
		case RXRPC_CALL_SERVER_ACK_REQUEST:
			call->state = RXRPC_CALL_SERVER_SEND_REPLY;
			if (!last)
				break;
		case RXRPC_CALL_SERVER_SEND_REPLY:
			call->state = RXRPC_CALL_SERVER_AWAIT_ACK;
			break;
		default:
			break;
		}
		FUNC14(&call->state_lock);
	}

	FUNC4("Tx DATA %%%u { #%u }",
	       FUNC6(sp->hdr.serial), FUNC6(sp->hdr.seq));

	sp->need_resend = 0;
	sp->resend_at = jiffies + rxrpc_resend_timeout * HZ;
	if (!FUNC11(RXRPC_CALL_RUN_RTIMER, &call->flags)) {
		FUNC1("run timer");
		call->resend_timer.expires = sp->resend_at;
		FUNC5(&call->resend_timer);
	}

	/* attempt to cancel the rx-ACK timer, deferring reply transmission if
	 * we're ACK'ing the request phase of an incoming call */
	ret = -EAGAIN;
	if (FUNC12(&call->ack_timer) >= 0) {
		/* the packet may be freed by rxrpc_process_call() before this
		 * returns */
		ret = FUNC8(call->conn->trans, skb);
		FUNC3("sent skb %p", skb);
	} else {
		FUNC1("failed to delete ACK timer");
	}

	if (ret < 0) {
		FUNC1("need instant resend %d", ret);
		sp->need_resend = 1;
		FUNC7(call);
	}

	FUNC2("");
}