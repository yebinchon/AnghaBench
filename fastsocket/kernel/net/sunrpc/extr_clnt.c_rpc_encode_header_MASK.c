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
struct TYPE_5__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int /*<<< orphan*/  tk_xprt; struct rpc_rqst* tk_rqstp; struct rpc_clnt* tk_client; } ;
struct rpc_rqst {TYPE_3__* rq_svec; int /*<<< orphan*/  rq_slen; int /*<<< orphan*/  rq_xid; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_vers; int /*<<< orphan*/  cl_prog; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/ * iov_base; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_CALL ; 
 int /*<<< orphan*/  RPC_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 *
FUNC4(struct rpc_task *task)
{
	struct rpc_clnt *clnt = task->tk_client;
	struct rpc_rqst	*req = task->tk_rqstp;
	__be32		*p = req->rq_svec[0].iov_base;

	/* FIXME: check buffer size? */

	p = FUNC3(task->tk_xprt, p);
	*p++ = req->rq_xid;		/* XID */
	*p++ = FUNC0(RPC_CALL);		/* CALL */
	*p++ = FUNC0(RPC_VERSION);	/* RPC version */
	*p++ = FUNC0(clnt->cl_prog);	/* program number */
	*p++ = FUNC0(clnt->cl_vers);	/* program version */
	*p++ = FUNC0(task->tk_msg.rpc_proc->p_proc);	/* procedure */
	p = FUNC1(task, p);
	req->rq_slen = FUNC2(&req->rq_svec[0], p);
	return p;
}