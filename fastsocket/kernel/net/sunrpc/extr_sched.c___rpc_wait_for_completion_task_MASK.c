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
struct rpc_task {int /*<<< orphan*/  tk_runstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_ACTIVE ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (void*),int /*<<< orphan*/ ) ; 
 int FUNC1 (void*) ; 

int FUNC2(struct rpc_task *task, int (*action)(void *))
{
	if (action == NULL)
		action = rpc_wait_bit_killable;
	return FUNC0(&task->tk_runstate, RPC_TASK_ACTIVE,
			action, TASK_KILLABLE);
}