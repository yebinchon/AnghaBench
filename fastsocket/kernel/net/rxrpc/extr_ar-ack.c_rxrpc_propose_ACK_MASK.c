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
typedef  size_t u8 ;
struct rxrpc_call {size_t ackr_reason; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ s8 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxrpc_call*,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__* rxrpc_ack_priority ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct rxrpc_call *call, u8 ack_reason,
		       __be32 serial, bool immediate)
{
	s8 prior = rxrpc_ack_priority[ack_reason];

	if (prior > rxrpc_ack_priority[call->ackr_reason]) {
		FUNC1(&call->lock);
		FUNC0(call, ack_reason, serial, immediate);
		FUNC2(&call->lock);
	}
}