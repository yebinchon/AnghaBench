#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_5__ {scalar_t__ fl_pid; } ;
struct nlm_lock {int /*<<< orphan*/  oh; int /*<<< orphan*/  fh; int /*<<< orphan*/  len; int /*<<< orphan*/  caller; scalar_t__ svid; TYPE_3__ fl; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {void* fsm_access; void* fsm_mode; int /*<<< orphan*/  cookie; struct nlm_lock lock; } ;
typedef  TYPE_1__ nlm_args ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_MAXSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_lock*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct svc_rqst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(struct svc_rqst *rqstp, __be32 *p, nlm_args *argp)
{
	struct nlm_lock	*lock = &argp->lock;

	FUNC1(lock, 0, sizeof(*lock));
	FUNC0(&lock->fl);
	lock->svid = ~(u32) 0;
	lock->fl.fl_pid = (pid_t)lock->svid;

	if (!(p = FUNC2(p, &argp->cookie))
	 || !(p = FUNC7(p, &lock->caller,
					    &lock->len, NLM_MAXSTRLEN))
	 || !(p = FUNC3(p, &lock->fh))
	 || !(p = FUNC4(p, &lock->oh)))
		return 0;
	argp->fsm_mode = FUNC5(*p++);
	argp->fsm_access = FUNC5(*p++);
	return FUNC6(rqstp, p);
}