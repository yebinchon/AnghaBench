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
struct rpc_wait_queue {int /*<<< orphan*/  lock; } ;
struct rpc_task {int /*<<< orphan*/  tk_priority; } ;
typedef  int /*<<< orphan*/  rpc_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_wait_queue*,struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rpc_wait_queue *q, struct rpc_task *task,
				rpc_action action)
{
	/* We shouldn't ever put an inactive task to sleep */
	FUNC0(!FUNC1(task));

	/*
	 * Protect the queue operations.
	 */
	FUNC3(&q->lock);
	FUNC2(q, task, action, task->tk_priority);
	FUNC4(&q->lock);
}