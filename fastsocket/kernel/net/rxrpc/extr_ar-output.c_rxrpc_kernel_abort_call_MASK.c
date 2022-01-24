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
typedef  int /*<<< orphan*/  u32 ;
struct rxrpc_call {scalar_t__ state; TYPE_1__* socket; int /*<<< orphan*/  conn; int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  debug_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 

void FUNC6(struct rxrpc_call *call, u32 abort_code)
{
	FUNC1("{%d},%d", call->debug_id, abort_code);

	FUNC3(&call->socket->sk);

	FUNC0("CALL %d USR %lx ST %d on CONN %p",
	       call->debug_id, call->user_call_ID, call->state, call->conn);

	if (call->state < RXRPC_CALL_COMPLETE)
		FUNC5(call, abort_code);

	FUNC4(&call->socket->sk);
	FUNC2("");
}