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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ mark; } ;
struct rxrpc_skb_priv {struct rxrpc_call* call; scalar_t__ error; } ;
struct rxrpc_call {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  ack_timer; int /*<<< orphan*/  resend_timer; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  RXRPC_CALL_HAS_USERID ; 
 int /*<<< orphan*/  RXRPC_CALL_RUN_RTIMER ; 
 int /*<<< orphan*/  RXRPC_CALL_TERMINAL_MSG ; 
 scalar_t__ RXRPC_SKB_MARK_NEW_CALL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_skb_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct rxrpc_call*,struct sk_buff*,int,int) ; 
 struct rxrpc_skb_priv* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct rxrpc_call *call, u32 mark, u32 error,
			      bool fatal)
{
	struct rxrpc_skb_priv *sp;
	struct sk_buff *skb;
	int ret;

	FUNC1("{%d,%lx},%u,%u,%d",
	       call->debug_id, call->flags, mark, error, fatal);

	/* remove timers and things for fatal messages */
	if (fatal) {
		FUNC5(&call->resend_timer);
		FUNC5(&call->ack_timer);
		FUNC4(RXRPC_CALL_RUN_RTIMER, &call->flags);
	}

	if (mark != RXRPC_SKB_MARK_NEW_CALL &&
	    !FUNC13(RXRPC_CALL_HAS_USERID, &call->flags)) {
		FUNC2("[no userid]");
		return 0;
	}

	if (!FUNC13(RXRPC_CALL_TERMINAL_MSG, &call->flags)) {
		skb = FUNC3(0, GFP_NOFS);
		if (!skb)
			return -ENOMEM;

		FUNC8(skb);

		skb->mark = mark;

		sp = FUNC10(skb);
		FUNC6(sp, 0, sizeof(*sp));
		sp->error = error;
		sp->call = call;
		FUNC7(call);

		FUNC11(&call->lock);
		ret = FUNC9(call, skb, true, fatal);
		FUNC12(&call->lock);
		FUNC0(ret < 0);
	}

	return 0;
}