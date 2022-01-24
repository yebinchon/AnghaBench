#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rxrpc_sock {int /*<<< orphan*/  call_lock; } ;
struct rxrpc_call {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  events; int /*<<< orphan*/  flags; TYPE_1__* socket; int /*<<< orphan*/  sock_node; int /*<<< orphan*/  debug_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  calls; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_HAS_USERID ; 
 int /*<<< orphan*/  RXRPC_CALL_RELEASE ; 
 int /*<<< orphan*/  RXRPC_CALL_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct rxrpc_sock *rx, struct rxrpc_call *call)
{
	FUNC0("RELEASE CALL %d", call->debug_id);

	if (FUNC7(RXRPC_CALL_HAS_USERID, &call->flags)) {
		FUNC8(&rx->call_lock);
		FUNC2(&call->sock_node, &call->socket->calls);
		FUNC1(RXRPC_CALL_HAS_USERID, &call->flags);
		FUNC9(&rx->call_lock);
	}

	FUNC3(&call->state_lock);
	if (!FUNC7(RXRPC_CALL_RELEASED, &call->flags) &&
	    !FUNC6(RXRPC_CALL_RELEASE, &call->events))
		FUNC5(call);
	FUNC4(&call->state_lock);
}