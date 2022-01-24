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
struct rpc_wait_queue {int /*<<< orphan*/  qlen; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int /*<<< orphan*/  tk_pid; TYPE_2__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct rpc_wait_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_wait_queue*) ; 

__attribute__((used)) static void FUNC6(struct rpc_wait_queue *queue, struct rpc_task *task)
{
	FUNC1(queue, task);
	if (FUNC0(queue))
		FUNC2(task);
	FUNC4(&task->u.tk_wait.list);
	queue->qlen--;
	FUNC3("RPC: %5u removed from queue %p \"%s\"\n",
			task->tk_pid, queue, FUNC5(queue));
}