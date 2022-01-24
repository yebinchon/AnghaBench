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
struct rpc_task {struct rpc_wait_queue* tk_waitqueue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct rpc_wait_queue *queue, struct rpc_task *task)
{
	if (FUNC0(task)) {
		FUNC2();
		if (task->tk_waitqueue == queue)
			FUNC1(queue, task);
	}
}