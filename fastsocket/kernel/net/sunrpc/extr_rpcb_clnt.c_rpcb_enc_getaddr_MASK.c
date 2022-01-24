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
struct rpcbind_args {int /*<<< orphan*/  r_owner; int /*<<< orphan*/  r_addr; int /*<<< orphan*/  r_netid; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_prog; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int /*<<< orphan*/  tk_pid; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_snd_buf; struct rpc_task* rq_task; } ;
typedef  void* __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  p_name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  RPCBIND_MAXNETIDLEN ; 
 int /*<<< orphan*/  RPCBIND_MAXUADDRLEN ; 
 int /*<<< orphan*/  RPCB_MAXOWNERLEN ; 
 int RPCB_program_sz ; 
 int RPCB_version_sz ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,void**) ; 
 void** FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *req, __be32 *p,
			    const struct rpcbind_args *rpcb)
{
	struct rpc_task *task = req->rq_task;
	struct xdr_stream xdr;

	FUNC0("RPC: %5u encoding RPCB_%s call (%u, %u, '%s', '%s')\n",
			task->tk_pid, task->tk_msg.rpc_proc->p_name,
			rpcb->r_prog, rpcb->r_vers,
			rpcb->r_netid, rpcb->r_addr);

	FUNC4(&xdr, &req->rq_snd_buf, p);

	p = FUNC5(&xdr,
			sizeof(__be32) * (RPCB_program_sz + RPCB_version_sz));
	if (FUNC3(p == NULL))
		return -EIO;
	*p++ = FUNC2(rpcb->r_prog);
	*p = FUNC2(rpcb->r_vers);

	if (FUNC1(&xdr, rpcb->r_netid, RPCBIND_MAXNETIDLEN))
		return -EIO;
	if (FUNC1(&xdr, rpcb->r_addr, RPCBIND_MAXUADDRLEN))
		return -EIO;
	if (FUNC1(&xdr, rpcb->r_owner, RPCB_MAXOWNERLEN))
		return -EIO;

	return 0;
}