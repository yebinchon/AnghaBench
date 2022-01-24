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
struct rxrpc_call {int state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  ack_timer; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_ACK_FINAL ; 
 int RXRPC_CALL_CLIENT_FINAL_ACK ; 
#define  RXRPC_CALL_CLIENT_RECV_REPLY 129 
 int RXRPC_CALL_SERVER_ACK_REQUEST ; 
#define  RXRPC_CALL_SERVER_RECV_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rxrpc_call *call)
{
	/* the call may be aborted before we have a chance to ACK it */
	FUNC5(&call->state_lock);

	switch (call->state) {
	case RXRPC_CALL_CLIENT_RECV_REPLY:
		call->state = RXRPC_CALL_CLIENT_FINAL_ACK;
		FUNC0("request final ACK");

		/* get an extra ref on the call for the final-ACK generator to
		 * release */
		FUNC1(call);
		FUNC3(RXRPC_CALL_ACK_FINAL, &call->events);
		if (FUNC4(&call->ack_timer) >= 0)
			FUNC2(call);
		break;

	case RXRPC_CALL_SERVER_RECV_REQUEST:
		call->state = RXRPC_CALL_SERVER_ACK_REQUEST;
	default:
		break;
	}

	FUNC6(&call->state_lock);
}