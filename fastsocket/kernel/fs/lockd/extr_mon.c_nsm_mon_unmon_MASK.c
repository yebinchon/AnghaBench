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
typedef  size_t u32 ;
struct rpc_message {int /*<<< orphan*/ * rpc_proc; struct nsm_res* rpc_resp; struct nsm_args* rpc_argp; } ;
struct rpc_clnt {int /*<<< orphan*/ * cl_procinfo; } ;
struct nsm_res {int dummy; } ;
struct nsm_handle {int /*<<< orphan*/  sm_mon_name; int /*<<< orphan*/  sm_priv; } ;
struct nsm_args {int vers; int /*<<< orphan*/  mon_name; int /*<<< orphan*/  proc; int /*<<< orphan*/  prog; int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  NLMPROC_NSM_NOTIFY ; 
 int /*<<< orphan*/  NLM_PROGRAM ; 
 int FUNC1 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nsm_res*,int /*<<< orphan*/ ,int) ; 
 struct rpc_clnt* FUNC4 () ; 
 int FUNC5 (struct rpc_clnt*,struct rpc_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*) ; 

__attribute__((used)) static int FUNC7(struct nsm_handle *nsm, u32 proc, struct nsm_res *res)
{
	struct rpc_clnt	*clnt;
	int		status;
	struct nsm_args args = {
		.priv		= &nsm->sm_priv,
		.prog		= NLM_PROGRAM,
		.vers		= 3,
		.proc		= NLMPROC_NSM_NOTIFY,
		.mon_name	= nsm->sm_mon_name,
	};
	struct rpc_message msg = {
		.rpc_argp	= &args,
		.rpc_resp	= res,
	};

	clnt = FUNC4();
	if (FUNC0(clnt)) {
		status = FUNC1(clnt);
		FUNC2("lockd: failed to create NSM upcall transport, "
				"status=%d\n", status);
		goto out;
	}

	FUNC3(res, 0, sizeof(*res));

	msg.rpc_proc = &clnt->cl_procinfo[proc];
	status = FUNC5(clnt, &msg, 0);
	if (status < 0)
		FUNC2("lockd: NSM upcall RPC failed, status=%d\n",
				status);
	else
		status = 0;
	FUNC6(clnt);
 out:
	return status;
}