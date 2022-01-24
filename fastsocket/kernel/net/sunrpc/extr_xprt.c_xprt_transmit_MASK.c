#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ qlen; } ;
struct TYPE_9__ {int max_slots; int /*<<< orphan*/  pending_u; int /*<<< orphan*/  sending_u; int /*<<< orphan*/  bklog_u; scalar_t__ recvs; scalar_t__ sends; int /*<<< orphan*/  req_u; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_7__ {scalar_t__ qlen; } ;
struct rpc_xprt {int /*<<< orphan*/  transport_lock; TYPE_5__ pending; TYPE_4__ stat; TYPE_3__ sending; TYPE_2__ backlog; int /*<<< orphan*/  num_reqs; TYPE_1__* ops; int /*<<< orphan*/  connect_cookie; int /*<<< orphan*/  timer; int /*<<< orphan*/  recv; } ;
struct rpc_task {int tk_status; int /*<<< orphan*/  tk_flags; int /*<<< orphan*/  tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_reply_bytes_recvd; int /*<<< orphan*/  rq_xtime; int /*<<< orphan*/  rq_connect_cookie; int /*<<< orphan*/  rq_bytes_sent; int /*<<< orphan*/  rq_list; int /*<<< orphan*/  rq_rcv_buf; int /*<<< orphan*/  rq_private_buf; int /*<<< orphan*/  rq_slen; struct rpc_xprt* rq_xprt; } ;
struct TYPE_6__ {int (* send_request ) (struct rpc_task*) ;int /*<<< orphan*/  (* set_retrans_timeout ) (struct rpc_task*) ;} ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  RPC_TASK_SENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC13 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  xprt_timer ; 

void FUNC15(struct rpc_task *task)
{
	struct rpc_rqst	*req = task->tk_rqstp;
	struct rpc_xprt	*xprt = req->rq_xprt;
	int status, numreqs;

	FUNC2("RPC: %5u xprt_transmit(%u)\n", task->tk_pid, req->rq_slen);

	if (!req->rq_reply_bytes_recvd) {
		if (FUNC5(&req->rq_list) && FUNC7(task)) {
			/*
			 * Add to the list only if we're expecting a reply
			 */
			FUNC9(&xprt->transport_lock);
			/* Update the softirq receive buffer */
			FUNC6(&req->rq_private_buf, &req->rq_rcv_buf,
					sizeof(req->rq_private_buf));
			/* Add request to the receive list */
			FUNC4(&req->rq_list, &xprt->recv);
			FUNC10(&xprt->transport_lock);
			FUNC14(req);
			/* Turn off autodisconnect */
			FUNC1(&xprt->timer);
		}
	} else if (!req->rq_bytes_sent)
		return;

	req->rq_connect_cookie = xprt->connect_cookie;
	req->rq_xtime = FUNC3();
	status = xprt->ops->send_request(task);
	if (status != 0) {
		task->tk_status = status;
		return;
	}

	FUNC2("RPC: %5u xmit complete\n", task->tk_pid);
	task->tk_flags |= RPC_TASK_SENT;
	FUNC9(&xprt->transport_lock);

	xprt->ops->set_retrans_timeout(task);

	numreqs = FUNC0(&xprt->num_reqs);
	if (numreqs > xprt->stat.max_slots)
		xprt->stat.max_slots = numreqs;
	xprt->stat.sends++;
	xprt->stat.req_u += xprt->stat.sends - xprt->stat.recvs;
	xprt->stat.bklog_u += xprt->backlog.qlen;
	xprt->stat.sending_u += xprt->sending.qlen;
	xprt->stat.pending_u += xprt->pending.qlen;

	/* Don't race with disconnect */
	if (!FUNC13(xprt))
		task->tk_status = -ENOTCONN;
	else if (!req->rq_reply_bytes_recvd && FUNC7(task)) {
		/*
		 * Sleep on the pending queue since
		 * we're expecting a reply.
		 */
		FUNC8(&xprt->pending, task, xprt_timer);
	}
	FUNC10(&xprt->transport_lock);
}