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
struct TYPE_2__ {int /*<<< orphan*/  tk_work; } ;
struct rpc_task {int /*<<< orphan*/  tk_runstate; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_QUEUED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_async_schedule ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rpc_task *task)
{
	bool need_wakeup = !FUNC4(task);

	FUNC3(task);
	if (!need_wakeup)
		return;
	if (FUNC1(task)) {
		FUNC0(&task->u.tk_work, rpc_async_schedule);
		FUNC2(rpciod_workqueue, &task->u.tk_work);
	} else
		FUNC5(&task->tk_runstate, RPC_TASK_QUEUED);
}