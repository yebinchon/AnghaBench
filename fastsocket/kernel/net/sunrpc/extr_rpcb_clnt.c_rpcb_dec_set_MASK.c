#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int /*<<< orphan*/  tk_pid; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; struct rpc_task* rq_task; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  p_name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__* FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct rpc_rqst *req, __be32 *p,
			unsigned int *boolp)
{
	struct rpc_task *task = req->rq_task;
	struct xdr_stream xdr;

	FUNC2(&xdr, &req->rq_rcv_buf, p);

	p = FUNC3(&xdr, sizeof(__be32));
	if (FUNC1(p == NULL))
		return -EIO;

	*boolp = 0;
	if (*p)
		*boolp = 1;

	FUNC0("RPC: %5u RPCB_%s call %s\n",
			task->tk_pid, task->tk_msg.rpc_proc->p_name,
			(*boolp ? "succeeded" : "failed"));
	return 0;
}