#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int /*<<< orphan*/  tk_action; TYPE_1__* tk_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rpc_call_prepare; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  call_start ; 
 int /*<<< orphan*/  rpc_prepare_task ; 

int
FUNC1(struct rpc_task *task)
{
	if (FUNC0(task))
		return 0;
	task->tk_action = call_start;
	if (task->tk_ops->rpc_call_prepare != NULL)
		task->tk_action = rpc_prepare_task;
	return 1;
}