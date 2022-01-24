#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_cred* rq_cred; } ;
struct rpc_cred {TYPE_1__* cr_ops; } ;
struct TYPE_2__ {struct rpc_cred* (* crbind ) (struct rpc_task*,struct rpc_cred*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_cred*) ; 
 int FUNC1 (struct rpc_cred*) ; 
 int RPCAUTH_LOOKUP_NEW ; 
 int RPC_TASK_ASYNC ; 
 int RPC_TASK_ROOTCREDS ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_cred*) ; 
 struct rpc_cred* FUNC3 (struct rpc_task*,int) ; 
 struct rpc_cred* FUNC4 (struct rpc_task*,int) ; 
 struct rpc_cred* FUNC5 (struct rpc_task*,struct rpc_cred*,int) ; 

__attribute__((used)) static int
FUNC6(struct rpc_task *task, struct rpc_cred *cred, int flags)
{
	struct rpc_rqst *req = task->tk_rqstp;
	struct rpc_cred *new;
	int lookupflags = 0;

	if (flags & RPC_TASK_ASYNC)
		lookupflags |= RPCAUTH_LOOKUP_NEW;
	if (cred != NULL)
		new = cred->cr_ops->crbind(task, cred, lookupflags);
	else if (flags & RPC_TASK_ROOTCREDS)
		new = FUNC4(task, lookupflags);
	else
		new = FUNC3(task, lookupflags);
	if (FUNC0(new))
		return FUNC1(new);
	if (req->rq_cred != NULL)
		FUNC2(req->rq_cred);
	req->rq_cred = new;
	return 0;
}