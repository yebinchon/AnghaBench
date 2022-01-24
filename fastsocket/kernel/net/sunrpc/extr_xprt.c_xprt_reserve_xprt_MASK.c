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
struct rpc_xprt {int /*<<< orphan*/  sending; struct rpc_task* snd_task; int /*<<< orphan*/  state; } ;
struct rpc_task {int /*<<< orphan*/  tk_status; scalar_t__ tk_timeout; int /*<<< orphan*/  tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_ntrans; scalar_t__ rq_bytes_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int RPC_PRIORITY_HIGH ; 
 int RPC_PRIORITY_LOW ; 
 int RPC_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct rpc_xprt *xprt, struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;
	int priority;

	if (FUNC2(XPRT_LOCKED, &xprt->state)) {
		if (task == xprt->snd_task)
			return 1;
		goto out_sleep;
	}
	xprt->snd_task = task;
	if (req != NULL) {
		req->rq_bytes_sent = 0;
		req->rq_ntrans++;
	}

	return 1;

out_sleep:
	FUNC0("RPC: %5u failed to lock transport %p\n",
			task->tk_pid, xprt);
	task->tk_timeout = 0;
	task->tk_status = -EAGAIN;
	if (req == NULL)
		priority = RPC_PRIORITY_LOW;
	else if (!req->rq_ntrans)
		priority = RPC_PRIORITY_NORMAL;
	else
		priority = RPC_PRIORITY_HIGH;
	FUNC1(&xprt->sending, task, NULL, priority);
	return 0;
}