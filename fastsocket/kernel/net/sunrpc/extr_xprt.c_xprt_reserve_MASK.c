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
struct rpc_xprt {int /*<<< orphan*/  reserve_lock; } ;
struct rpc_task {int /*<<< orphan*/  tk_status; scalar_t__ tk_timeout; int /*<<< orphan*/ * tk_rqstp; struct rpc_xprt* tk_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*,struct rpc_task*) ; 

void FUNC5(struct rpc_task *task)
{
	struct rpc_xprt	*xprt = task->tk_xprt;

	task->tk_status = 0;
	if (task->tk_rqstp != NULL)
		return;

	/* Note: grabbing the xprt_lock_write() here is not strictly needed,
	 * but ensures that we throttle new slot allocation if the transport
	 * is congested (e.g. if reconnecting or if we're out of socket
	 * write buffer space).
	 */
	task->tk_timeout = 0;
	task->tk_status = -EAGAIN;
	if (!FUNC3(xprt, task))
		return;

	FUNC0(&xprt->reserve_lock);
	FUNC2(task);
	FUNC1(&xprt->reserve_lock);
	FUNC4(xprt, task);
}