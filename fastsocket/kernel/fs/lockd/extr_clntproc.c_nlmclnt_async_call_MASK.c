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
typedef  int /*<<< orphan*/  u32 ;
struct rpc_task {int dummy; } ;
struct rpc_message {struct rpc_cred* rpc_cred; int /*<<< orphan*/ * rpc_resp; int /*<<< orphan*/ * rpc_argp; } ;
struct rpc_cred {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct nlm_rqst {int /*<<< orphan*/  a_res; int /*<<< orphan*/  a_args; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int FUNC1 (struct rpc_task*) ; 
 struct rpc_task* FUNC2 (struct nlm_rqst*,int /*<<< orphan*/ ,struct rpc_message*,struct rpc_call_ops const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int FUNC4 (struct rpc_task*) ; 

__attribute__((used)) static int FUNC5(struct rpc_cred *cred, struct nlm_rqst *req, u32 proc, const struct rpc_call_ops *tk_ops)
{
	struct rpc_message msg = {
		.rpc_argp	= &req->a_args,
		.rpc_resp	= &req->a_res,
		.rpc_cred	= cred,
	};
	struct rpc_task *task;
	int err;

	task = FUNC2(req, proc, &msg, tk_ops);
	if (FUNC0(task))
		return FUNC1(task);
	err = FUNC4(task);
	FUNC3(task);
	return err;
}