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
struct TYPE_3__ {scalar_t__ status; } ;
struct TYPE_4__ {int block; } ;
struct nlm_rqst {TYPE_1__ a_res; int /*<<< orphan*/  a_count; TYPE_2__ a_args; int /*<<< orphan*/  a_flags; } ;
struct nlm_host {int dummy; } ;
struct file_lock {int /*<<< orphan*/  fl_file; } ;

/* Variables and functions */
 int ENOLCK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NLMPROC_CANCEL ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nlm_rqst* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 
 scalar_t__ nlm_lck_denied ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_rqst*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nlm_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlmclnt_cancel_ops ; 
 int /*<<< orphan*/  FUNC7 (struct nlm_rqst*,struct file_lock*) ; 

__attribute__((used)) static int FUNC8(struct nlm_host *host, int block, struct file_lock *fl)
{
	struct nlm_rqst	*req;
	int status;

	FUNC1("lockd: blocking lock attempt was interrupted by a signal.\n"
		"       Attempting to cancel lock.\n");

	req = FUNC3(FUNC4(host));
	if (!req)
		return -ENOMEM;
	req->a_flags = RPC_TASK_ASYNC;

	FUNC7(req, fl);
	req->a_args.block = block;

	FUNC0(&req->a_count);
	status = FUNC6(FUNC2(fl->fl_file), req,
			NLMPROC_CANCEL, &nlmclnt_cancel_ops);
	if (status == 0 && req->a_res.status == nlm_lck_denied)
		status = -ENOLCK;
	FUNC5(req);
	return status;
}