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
struct rpc_xprt {TYPE_3__* ops; int /*<<< orphan*/  transport_lock; scalar_t__ idle_timeout; scalar_t__ last_used; int /*<<< orphan*/  timer; int /*<<< orphan*/  recv; struct rpc_task* snd_task; } ;
struct rpc_task {int /*<<< orphan*/  tk_pid; struct rpc_rqst* tk_rqstp; TYPE_2__* tk_client; int /*<<< orphan*/  tk_calldata; TYPE_1__* tk_ops; } ;
struct rpc_rqst {int /*<<< orphan*/  (* rq_release_snd_buf ) (struct rpc_rqst*) ;int /*<<< orphan*/ * rq_cred; scalar_t__ rq_buffer; int /*<<< orphan*/  rq_list; struct rpc_xprt* rq_xprt; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* buf_free ) (scalar_t__) ;int /*<<< orphan*/  (* release_request ) (struct rpc_task*) ;int /*<<< orphan*/  (* release_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  cl_metrics; int /*<<< orphan*/  cl_xprt; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* rpc_count_stats ) (struct rpc_task*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct rpc_rqst*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct rpc_xprt* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_xprt*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC15 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC18 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC19 (struct rpc_xprt*,struct rpc_rqst*) ; 
 scalar_t__ FUNC20 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC21 (struct rpc_xprt*,struct rpc_task*) ; 

void FUNC22(struct rpc_task *task)
{
	struct rpc_xprt	*xprt;
	struct rpc_rqst	*req = task->tk_rqstp;

	if (req == NULL) {
		if (task->tk_client) {
			FUNC8();
			xprt = FUNC7(task->tk_client->cl_xprt);
			if (xprt->snd_task == task)
				FUNC21(xprt, task);
			FUNC9();
		}
		return;
	}

	xprt = req->rq_xprt;
	if (task->tk_ops->rpc_count_stats != NULL)
		task->tk_ops->rpc_count_stats(task, task->tk_calldata);
	else if (task->tk_client)
		FUNC10(task, task->tk_client->cl_metrics);
	FUNC11(&xprt->transport_lock);
	xprt->ops->release_xprt(xprt, task);
	if (xprt->ops->release_request)
		xprt->ops->release_request(task);
	if (!FUNC4(&req->rq_list))
		FUNC3(&req->rq_list);
	xprt->last_used = jiffies;
	if (FUNC4(&xprt->recv) && FUNC20(xprt))
		FUNC5(&xprt->timer,
				xprt->last_used + xprt->idle_timeout);
	FUNC12(&xprt->transport_lock);
	if (req->rq_buffer)
		xprt->ops->buf_free(req->rq_buffer);
	if (req->rq_cred != NULL)
		FUNC6(req->rq_cred);
	task->tk_rqstp = NULL;
	if (req->rq_release_snd_buf)
		req->rq_release_snd_buf(req);

	FUNC1("RPC: %5u release request %p\n", task->tk_pid, req);
	if (FUNC2(!FUNC0(req)))
		FUNC19(xprt, req);
	else
		FUNC18(req);
}