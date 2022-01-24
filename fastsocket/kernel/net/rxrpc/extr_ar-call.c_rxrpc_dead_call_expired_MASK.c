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
struct rxrpc_call {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_DEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long _call)
{
	struct rxrpc_call *call = (struct rxrpc_call *) _call;

	FUNC0("{%d}", call->debug_id);

	FUNC2(&call->state_lock);
	call->state = RXRPC_CALL_DEAD;
	FUNC3(&call->state_lock);
	FUNC1(call);
}