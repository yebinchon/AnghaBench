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
struct rpc_task {int dummy; } ;

/* Variables and functions */
 struct rpc_task* FUNC0 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rpc_wait_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_wait_queue*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct rpc_task *FUNC6(struct rpc_wait_queue *queue,
		bool (*func)(struct rpc_task *, void *), void *data)
{
	struct rpc_task	*task = NULL;

	FUNC1("RPC:       wake_up_first(%p \"%s\")\n",
			queue, FUNC2(queue));
	FUNC4(&queue->lock);
	task = FUNC0(queue);
	if (task != NULL) {
		if (func(task, data))
			FUNC3(queue, task);
		else
			task = NULL;
	}
	FUNC5(&queue->lock);

	return task;
}