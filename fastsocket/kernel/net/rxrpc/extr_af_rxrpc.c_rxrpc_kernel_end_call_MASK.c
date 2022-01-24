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
struct rxrpc_call {int /*<<< orphan*/  socket; int /*<<< orphan*/  usage; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rxrpc_call*) ; 

void FUNC4(struct rxrpc_call *call)
{
	FUNC0("%d{%d}", call->debug_id, FUNC1(&call->usage));
	FUNC3(call->socket, call);
	FUNC2(call);
}