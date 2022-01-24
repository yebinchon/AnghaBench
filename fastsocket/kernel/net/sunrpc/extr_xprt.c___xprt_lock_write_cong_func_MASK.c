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
struct rpc_xprt {struct rpc_task* snd_task; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_ntrans; scalar_t__ rq_bytes_sent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_xprt*,struct rpc_task*) ; 

__attribute__((used)) static bool FUNC1(struct rpc_task *task, void *data)
{
	struct rpc_xprt *xprt = data;
	struct rpc_rqst *req;

	req = task->tk_rqstp;
	if (req == NULL) {
		xprt->snd_task = task;
		return true;
	}
	if (FUNC0(xprt, task)) {
		xprt->snd_task = task;
		req->rq_bytes_sent = 0;
		req->rq_ntrans++;
		return true;
	}
	return false;
}