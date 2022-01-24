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
struct rpc_task {unsigned short tk_flags; int /*<<< orphan*/  tk_pid; int /*<<< orphan*/  tk_calldata; int /*<<< orphan*/  tk_ops; } ;

/* Variables and functions */
 unsigned short RPC_TASK_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_task_mempool ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task)
{
	unsigned short tk_flags = task->tk_flags;

	FUNC2(task->tk_ops, task->tk_calldata);

	if (tk_flags & RPC_TASK_DYNAMIC) {
		FUNC0("RPC: %5u freeing task\n", task->tk_pid);
		FUNC1(task, rpc_task_mempool);
	}
}