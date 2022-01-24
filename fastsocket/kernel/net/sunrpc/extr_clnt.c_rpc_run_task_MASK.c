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
struct rpc_task_setup {int /*<<< orphan*/  rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int /*<<< orphan*/  tk_count; int /*<<< orphan*/ * tk_action; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 struct rpc_task* FUNC4 (struct rpc_task_setup const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*,int /*<<< orphan*/ ) ; 

struct rpc_task *FUNC7(const struct rpc_task_setup *task_setup_data)
{
	struct rpc_task *task;

	task = FUNC4(task_setup_data);
	if (FUNC0(task))
		goto out;

	FUNC5(task, task_setup_data->rpc_client);
	FUNC6(task, task_setup_data->rpc_message);

	if (task->tk_action == NULL)
		FUNC2(task);

	FUNC1(&task->tk_count);
	FUNC3(task);
out:
	return task;
}