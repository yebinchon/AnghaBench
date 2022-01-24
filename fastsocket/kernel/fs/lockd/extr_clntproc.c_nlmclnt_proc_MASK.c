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
struct TYPE_3__ {int block; } ;
struct nlm_rqst {TYPE_1__ a_args; } ;
struct nlm_host {int dummy; } ;
struct file_lock {scalar_t__ fl_type; TYPE_2__* fl_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fl_release_private ) (struct file_lock*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct nlm_rqst* FUNC5 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlm_host*) ; 
 int FUNC7 (struct nlm_rqst*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC8 (struct file_lock*,struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlm_rqst*,struct file_lock*) ; 
 int FUNC10 (struct nlm_rqst*,struct file_lock*) ; 
 int FUNC11 (struct nlm_rqst*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC12 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(struct nlm_host *host, int cmd, struct file_lock *fl)
{
	struct nlm_rqst		*call;
	int			status;

	FUNC6(host);
	call = FUNC5(host);
	if (call == NULL)
		return -ENOMEM;

	FUNC8(fl, host);
	/* Set up the argument struct */
	FUNC9(call, fl);

	FUNC4();
	if (FUNC1(cmd) || FUNC2(cmd)) {
		if (fl->fl_type != F_UNLCK) {
			call->a_args.block = FUNC2(cmd) ? 1 : 0;
			status = FUNC7(call, fl);
		} else
			status = FUNC11(call, fl);
	} else if (FUNC0(cmd))
		status = FUNC10(call, fl);
	else
		status = -EINVAL;

	fl->fl_ops->fl_release_private(fl);
	fl->fl_ops = NULL;
	FUNC13();

	FUNC3("lockd: clnt proc returns %d\n", status);
	return status;
}