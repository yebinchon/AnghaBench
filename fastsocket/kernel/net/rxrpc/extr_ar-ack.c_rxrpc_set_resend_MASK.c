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
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  events; int /*<<< orphan*/  resend_timer; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int /*<<< orphan*/  RXRPC_CALL_RESEND ; 
 int /*<<< orphan*/  RXRPC_CALL_RESEND_TIMER ; 
 int /*<<< orphan*/  RXRPC_CALL_RUN_RTIMER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rxrpc_call *call, u8 resend,
			     unsigned long resend_at)
{
	FUNC4(&call->state_lock);
	if (call->state >= RXRPC_CALL_COMPLETE)
		resend = 0;

	if (resend & 1) {
		FUNC0("SET RESEND");
		FUNC6(RXRPC_CALL_RESEND, &call->events);
	}

	if (resend & 2) {
		FUNC0("MODIFY RESEND TIMER");
		FUNC6(RXRPC_CALL_RUN_RTIMER, &call->flags);
		FUNC3(&call->resend_timer, resend_at);
	} else {
		FUNC0("KILL RESEND TIMER");
		FUNC2(&call->resend_timer);
		FUNC1(RXRPC_CALL_RESEND_TIMER, &call->events);
		FUNC1(RXRPC_CALL_RUN_RTIMER, &call->flags);
	}
	FUNC5(&call->state_lock);
}