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
typedef  int /*<<< orphan*/  u32 ;
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  events; int /*<<< orphan*/  ack_timer; int /*<<< orphan*/  resend_timer; int /*<<< orphan*/  abort_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_ABORT ; 
 int /*<<< orphan*/  RXRPC_CALL_ACK ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ; 
 int /*<<< orphan*/  RXRPC_CALL_RESEND_TIMER ; 
 int /*<<< orphan*/  RXRPC_CALL_RUN_RTIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rxrpc_call *call, u32 abort_code)
{
	FUNC4(&call->state_lock);

	if (call->state <= RXRPC_CALL_COMPLETE) {
		call->state = RXRPC_CALL_LOCALLY_ABORTED;
		call->abort_code = abort_code;
		FUNC3(RXRPC_CALL_ABORT, &call->events);
		FUNC1(&call->resend_timer);
		FUNC1(&call->ack_timer);
		FUNC0(RXRPC_CALL_RESEND_TIMER, &call->events);
		FUNC0(RXRPC_CALL_ACK, &call->events);
		FUNC0(RXRPC_CALL_RUN_RTIMER, &call->flags);
		FUNC2(call);
	}

	FUNC5(&call->state_lock);
}