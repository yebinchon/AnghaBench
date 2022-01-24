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
struct rpc_task {void (* tk_callback ) (struct rpc_task*) ;void (* tk_action ) (struct rpc_task*) ;int /*<<< orphan*/  tk_status; int /*<<< orphan*/  tk_pid; int /*<<< orphan*/  tk_flags; int /*<<< orphan*/  tk_runstate; struct rpc_wait_queue* tk_waitqueue; int /*<<< orphan*/  tk_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_KILLED ; 
 int /*<<< orphan*/  RPC_TASK_QUEUED ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_task*) ; 
 int /*<<< orphan*/  rpc_wait_bit_killable ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct rpc_task*,void (*) (struct rpc_task*)) ; 

__attribute__((used)) static void FUNC12(struct rpc_task *task)
{
	struct rpc_wait_queue *queue;
	int task_is_async = FUNC1(task);
	int status = 0;

	FUNC3("RPC: %5u __rpc_execute flags=0x%x\n",
			task->tk_pid, task->tk_flags);

	FUNC0(FUNC2(task));

	for (;;) {
		void (*do_action)(struct rpc_task *);

		/*
		 * Execute any pending callback first.
		 */
		do_action = task->tk_callback;
		task->tk_callback = NULL;
		if (do_action == NULL) {
			/*
			 * Perform the next FSM step.
			 * tk_action may be NULL if the task has been killed.
			 * In particular, note that rpc_killall_tasks may
			 * do this at any time, so beware when dereferencing.
			 */
			do_action = task->tk_action;
			if (do_action == NULL)
				break;
		}
		FUNC11(task->tk_client, task, task->tk_action);
		do_action(task);

		/*
		 * Lockless check for whether task is sleeping or not.
		 */
		if (!FUNC2(task))
			continue;
		/*
		 * The queue->lock protects against races with
		 * rpc_make_runnable().
		 *
		 * Note that once we clear RPC_TASK_RUNNING on an asynchronous
		 * rpc_task, rpc_make_runnable() can assign it to a
		 * different workqueue. We therefore cannot assume that the
		 * rpc_task pointer may still be dereferenced.
		 */
		queue = task->tk_waitqueue;
		FUNC9(&queue->lock);
		if (!FUNC2(task)) {
			FUNC10(&queue->lock);
			continue;
		}
		FUNC5(task);
		FUNC10(&queue->lock);
		if (task_is_async)
			return;

		/* sync task: sleep here */
		FUNC3("RPC: %5u sync task going to sleep\n", task->tk_pid);
		status = FUNC4(&task->tk_runstate,
				RPC_TASK_QUEUED, rpc_wait_bit_killable,
				TASK_KILLABLE);
		if (status == -ERESTARTSYS) {
			/*
			 * When a sync task receives a signal, it exits with
			 * -ERESTARTSYS. In order to catch any callbacks that
			 * clean up after sleeping on some queue, we don't
			 * break the loop here, but go around once more.
			 */
			FUNC3("RPC: %5u got signal\n", task->tk_pid);
			task->tk_flags |= RPC_TASK_KILLED;
			FUNC6(task, -ERESTARTSYS);
		}
		FUNC8(task);
		FUNC3("RPC: %5u sync task resuming\n", task->tk_pid);
	}

	FUNC3("RPC: %5u return %d, status %d\n", task->tk_pid, status,
			task->tk_status);
	/* Release all resources associated with the task */
	FUNC7(task);
}