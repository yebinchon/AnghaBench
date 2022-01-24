#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_wait_queue {int /*<<< orphan*/  qlen; int /*<<< orphan*/ * tasks; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int /*<<< orphan*/  tk_pid; struct rpc_wait_queue* tk_waitqueue; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 scalar_t__ FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct rpc_wait_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct rpc_wait_queue *queue,
		struct rpc_task *task,
		unsigned char queue_priority)
{
	FUNC0 (FUNC2(task));

	if (FUNC1(queue))
		FUNC4(queue, task, queue_priority);
	else if (FUNC3(task))
		FUNC6(&task->u.tk_wait.list, &queue->tasks[0]);
	else
		FUNC7(&task->u.tk_wait.list, &queue->tasks[0]);
	task->tk_waitqueue = queue;
	queue->qlen++;
	/* barrier matches the read in rpc_wake_up_task_queue_locked() */
	FUNC10();
	FUNC9(task);

	FUNC5("RPC: %5u added to queue %p \"%s\"\n",
			task->tk_pid, queue, FUNC8(queue));
}