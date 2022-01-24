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
struct rpc_task {int /*<<< orphan*/  tk_workqueue; int /*<<< orphan*/  tk_count; int /*<<< orphan*/  tk_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC9(struct rpc_task *task)
{
	FUNC5("RPC: %5u release task\n", task->tk_pid);

	FUNC0 (FUNC2(task));

	FUNC8(task);

	/*
	 * Note: at this point we have been removed from rpc_clnt->cl_tasks,
	 * so it should be safe to use task->tk_count as a test for whether
	 * or not any other processes still hold references to our rpc_task.
	 */
	if (FUNC4(&task->tk_count) != 1 + !FUNC1(task)) {
		/* Wake up anyone who may be waiting for task completion */
		if (!FUNC6(task))
			return;
	} else {
		if (!FUNC3(&task->tk_count))
			return;
	}
	FUNC7(task, task->tk_workqueue);
}