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
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  events; int /*<<< orphan*/  abort_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_ABORT ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct rxrpc_call *call, u32 abort_code)
{
	FUNC1(&call->state_lock);
	if (call->state < RXRPC_CALL_COMPLETE) {
		call->abort_code = abort_code;
		call->state = RXRPC_CALL_LOCALLY_ABORTED;
		FUNC0(RXRPC_CALL_ABORT, &call->events);
	}
	FUNC2(&call->state_lock);
}