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
struct rpc_xprt {int /*<<< orphan*/  pending; } ;
struct rpc_task {int /*<<< orphan*/  tk_timeout; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_timeout; struct rpc_xprt* rq_xprt; } ;
typedef  int /*<<< orphan*/  rpc_action ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ ) ; 

void FUNC2(struct rpc_task *task, rpc_action action)
{
	struct rpc_rqst *req = task->tk_rqstp;
	struct rpc_xprt *xprt = req->rq_xprt;

	task->tk_timeout = FUNC0(task) ? req->rq_timeout : 0;
	FUNC1(&xprt->pending, task, action);
}