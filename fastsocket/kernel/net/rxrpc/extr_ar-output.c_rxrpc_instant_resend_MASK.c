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
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  events; int /*<<< orphan*/  flags; int /*<<< orphan*/  resend_timer; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int /*<<< orphan*/  RXRPC_CALL_RESEND_TIMER ; 
 int /*<<< orphan*/  RXRPC_CALL_RUN_RTIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct rxrpc_call *call)
{
	FUNC1(&call->state_lock);
	if (FUNC5(&call->resend_timer) >= 0) {
		FUNC0(RXRPC_CALL_RUN_RTIMER, &call->flags);
		if (call->state < RXRPC_CALL_COMPLETE &&
		    !FUNC4(RXRPC_CALL_RESEND_TIMER, &call->events))
			FUNC3(call);
	}
	FUNC2(&call->state_lock);
}