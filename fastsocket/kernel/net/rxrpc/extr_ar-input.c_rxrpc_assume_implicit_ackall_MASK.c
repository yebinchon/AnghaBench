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
struct rxrpc_call {int state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  events; int /*<<< orphan*/  resend_timer; int /*<<< orphan*/  acks_latest; } ;

/* Variables and functions */
#define  RXRPC_CALL_CLIENT_AWAIT_REPLY 128 
 int RXRPC_CALL_CLIENT_RECV_REPLY ; 
 int /*<<< orphan*/  RXRPC_CALL_RCVD_ACKALL ; 
 int /*<<< orphan*/  RXRPC_CALL_RESEND ; 
 int /*<<< orphan*/  RXRPC_CALL_RESEND_TIMER ; 
 int /*<<< orphan*/  RXRPC_CALL_RUN_RTIMER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rxrpc_call *call, u32 serial)
{
	FUNC4(&call->state_lock);

	switch (call->state) {
	case RXRPC_CALL_CLIENT_AWAIT_REPLY:
		call->state = RXRPC_CALL_CLIENT_RECV_REPLY;
		call->acks_latest = serial;

		FUNC0("implicit ACKALL %%%u", call->acks_latest);
		FUNC2(RXRPC_CALL_RCVD_ACKALL, &call->events);
		FUNC5(&call->state_lock);

		if (FUNC3(&call->resend_timer) >= 0) {
			FUNC1(RXRPC_CALL_RESEND_TIMER, &call->events);
			FUNC1(RXRPC_CALL_RESEND, &call->events);
			FUNC1(RXRPC_CALL_RUN_RTIMER, &call->flags);
		}
		break;

	default:
		FUNC5(&call->state_lock);
		break;
	}
}