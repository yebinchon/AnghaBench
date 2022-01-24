#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct task_security_struct {scalar_t__ osid; scalar_t__ sid; } ;
struct linux_binprm {int dummy; } ;
struct itimerval {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  real_parent; TYPE_2__* sighand; int /*<<< orphan*/  blocked; TYPE_1__* signal; } ;
struct TYPE_8__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROCESS__SIGINH ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int SIGNAL_GROUP_EXIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 struct task_security_struct* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 

__attribute__((used)) static void FUNC12(struct linux_binprm *bprm)
{
	const struct task_security_struct *tsec = FUNC3();
	struct itimerval itimer;
	u32 osid, sid;
	int rc, i;

	osid = tsec->osid;
	sid = tsec->sid;

	if (sid == osid)
		return;

	/* Check whether the new SID can inherit signal state from the old SID.
	 * If not, clear itimers to avoid subsequent signal generation and
	 * flush and unblock signals.
	 *
	 * This must occur _after_ the task SID has been updated so that any
	 * kill done after the flush will be checked against the new SID.
	 */
	rc = FUNC2(osid, sid, SECCLASS_PROCESS, PROCESS__SIGINH, NULL);
	if (rc) {
		FUNC6(&itimer, 0, sizeof itimer);
		for (i = 0; i < 3; i++)
			FUNC4(i, &itimer, NULL);
		FUNC10(&current->sighand->siglock);
		if (!(current->signal->flags & SIGNAL_GROUP_EXIT)) {
			FUNC0(current);
			FUNC5(current, 1);
			FUNC9(&current->blocked);
		}
		FUNC11(&current->sighand->siglock);
	}

	/* Wake up the parent if it is waiting so that it can recheck
	 * wait permission to the new task SID. */
	FUNC7(&tasklist_lock);
	FUNC1(current, current->real_parent);
	FUNC8(&tasklist_lock);
}