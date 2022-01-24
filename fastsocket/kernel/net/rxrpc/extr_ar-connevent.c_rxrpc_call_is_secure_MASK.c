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
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int /*<<< orphan*/  RXRPC_CALL_SECURED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rxrpc_call *call)
{
	FUNC0("%p", call);
	if (call) {
		FUNC1(&call->state_lock);
		if (call->state < RXRPC_CALL_COMPLETE &&
		    !FUNC4(RXRPC_CALL_SECURED, &call->events))
			FUNC3(call);
		FUNC2(&call->state_lock);
	}
}