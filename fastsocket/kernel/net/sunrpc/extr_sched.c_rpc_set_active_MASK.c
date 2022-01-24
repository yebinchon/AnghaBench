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
struct rpc_task {int /*<<< orphan*/  tk_runstate; int /*<<< orphan*/  tk_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rpc_task*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task)
{
	FUNC2(task->tk_client, task, NULL);

	FUNC0(task);
	FUNC1(RPC_TASK_ACTIVE, &task->tk_runstate);
}