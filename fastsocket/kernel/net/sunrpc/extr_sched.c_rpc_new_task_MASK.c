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
struct rpc_task_setup {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  callback_ops; struct rpc_task* task; } ;
struct rpc_task {unsigned short tk_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_task* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short RPC_TASK_DYNAMIC ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rpc_task*) ; 
 struct rpc_task* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*,struct rpc_task_setup const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rpc_task *FUNC5(const struct rpc_task_setup *setup_data)
{
	struct rpc_task	*task = setup_data->task;
	unsigned short flags = 0;

	if (task == NULL) {
		task = FUNC2();
		if (task == NULL) {
			FUNC4(setup_data->callback_ops,
					setup_data->callback_data);
			return FUNC0(-ENOMEM);
		}
		flags = RPC_TASK_DYNAMIC;
	}

	FUNC3(task, setup_data);
	task->tk_flags |= flags;
	FUNC1("RPC:       allocated task %p\n", task);
	return task;
}