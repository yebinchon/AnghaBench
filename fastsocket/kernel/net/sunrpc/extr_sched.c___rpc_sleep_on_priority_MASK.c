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
struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int /*<<< orphan*/ * tk_callback; int /*<<< orphan*/  tk_client; int /*<<< orphan*/  tk_pid; } ;
typedef  int /*<<< orphan*/ * rpc_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rpc_task*,struct rpc_wait_queue*) ; 

__attribute__((used)) static void FUNC6(struct rpc_wait_queue *q,
		struct rpc_task *task,
		rpc_action action,
		unsigned char queue_priority)
{
	FUNC3("RPC: %5u sleep_on(queue \"%s\" time %lu)\n",
			task->tk_pid, FUNC4(q), jiffies);

	FUNC5(task->tk_client, task, q);

	FUNC2(q, task, queue_priority);

	FUNC0(task->tk_callback != NULL);
	task->tk_callback = action;
	FUNC1(q, task);
}