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
struct TYPE_5__ {int /*<<< orphan*/  connect_start; } ;
struct rpc_xprt {TYPE_3__* ops; TYPE_2__ stat; int /*<<< orphan*/  state; int /*<<< orphan*/  pending; } ;
struct rpc_task {TYPE_1__* tk_rqstp; int /*<<< orphan*/  tk_timeout; int /*<<< orphan*/  tk_status; int /*<<< orphan*/  tk_pid; struct rpc_xprt* tk_xprt; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* connect ) (struct rpc_task*) ;int /*<<< orphan*/  (* close ) (struct rpc_xprt*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  rq_timeout; scalar_t__ rq_bytes_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  XPRT_CLOSE_WAIT ; 
 int /*<<< orphan*/  XPRT_CLOSING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct rpc_xprt*,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  xprt_connect_status ; 
 scalar_t__ FUNC7 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_xprt*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_xprt*,struct rpc_task*) ; 
 scalar_t__ FUNC10 (struct rpc_xprt*) ; 

void FUNC11(struct rpc_task *task)
{
	struct rpc_xprt	*xprt = task->tk_xprt;

	FUNC0("RPC: %5u xprt_connect xprt %p %s connected\n", task->tk_pid,
			xprt, (FUNC7(xprt) ? "is" : "is not"));

	if (!FUNC6(xprt)) {
		task->tk_status = -EAGAIN;
		return;
	}
	if (!FUNC8(xprt, task))
		return;

	if (FUNC4(XPRT_CLOSE_WAIT, &xprt->state))
		xprt->ops->close(xprt);

	if (FUNC7(xprt))
		FUNC9(xprt, task);
	else {
		if (task->tk_rqstp)
			task->tk_rqstp->rq_bytes_sent = 0;

		task->tk_timeout = task->tk_rqstp->rq_timeout;
		FUNC1(&xprt->pending, task, xprt_connect_status);

		if (FUNC5(XPRT_CLOSING, &xprt->state))
			return;
		if (FUNC10(xprt))
			return;
		xprt->stat.connect_start = jiffies;
		xprt->ops->connect(task);
	}
}