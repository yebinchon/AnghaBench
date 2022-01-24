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
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  events; int /*<<< orphan*/  abort_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_ABORT ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 scalar_t__ RXRPC_CALL_DEAD ; 
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ; 
 int /*<<< orphan*/  RXRPC_CALL_RELEASE ; 
 int /*<<< orphan*/  RX_CALL_DEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rxrpc_call *call)
{
	bool sched;

	FUNC3(&call->state_lock);
	if (call->state < RXRPC_CALL_DEAD) {
		sched = false;
		if (call->state < RXRPC_CALL_COMPLETE) {
			FUNC0("abort call %p", call);
			call->state = RXRPC_CALL_LOCALLY_ABORTED;
			call->abort_code = RX_CALL_DEAD;
			if (!FUNC2(RXRPC_CALL_ABORT, &call->events))
				sched = true;
		}
		if (!FUNC2(RXRPC_CALL_RELEASE, &call->events))
			sched = true;
		if (sched)
			FUNC1(call);
	}
	FUNC4(&call->state_lock);
}