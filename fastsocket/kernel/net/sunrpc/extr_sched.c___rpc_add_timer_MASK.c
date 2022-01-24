#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/  expires; } ;
struct rpc_wait_queue {TYPE_3__ timer_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer_list; scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int tk_timeout; TYPE_2__ u; int /*<<< orphan*/  tk_pid; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_wait_queue*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct rpc_wait_queue *queue, struct rpc_task *task)
{
	if (!task->tk_timeout)
		return;

	FUNC0("RPC: %5u setting alarm for %lu ms\n",
			task->tk_pid, task->tk_timeout * 1000 / HZ);

	task->u.tk_wait.expires = jiffies + task->tk_timeout;
	if (FUNC2(&queue->timer_list.list) || FUNC4(task->u.tk_wait.expires, queue->timer_list.expires))
		FUNC3(queue, task->u.tk_wait.expires);
	FUNC1(&task->u.tk_wait.timer_list, &queue->timer_list.list);
}