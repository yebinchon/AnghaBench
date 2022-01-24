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
struct task_struct {struct cred const* cred; struct cred const* real_cred; scalar_t__ pdeath_signal; scalar_t__ mm; } ;
typedef  struct cred {scalar_t__ euid; scalar_t__ egid; scalar_t__ fsuid; scalar_t__ fsgid; scalar_t__ uid; scalar_t__ suid; scalar_t__ gid; scalar_t__ sgid; TYPE_1__* user; int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  usage; } const cred ;
struct TYPE_2__ {int /*<<< orphan*/  processes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PROC_EVENT_GID ; 
 int /*<<< orphan*/  PROC_EVENT_UID ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct cred const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC12 (struct cred const*,struct cred const*) ; 
 int FUNC13 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct cred const*,struct cred const*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  suid_dumpable ; 
 int /*<<< orphan*/  FUNC18 (struct cred const*) ; 

int FUNC19(struct cred *new)
{
	struct task_struct *task = current;
	const struct cred *old = task->real_cred;

	FUNC7("commit_creds(%p{%d,%d})", new,
	       FUNC4(&new->usage),
	       FUNC13(new));

	FUNC0(task->cred != old);
#ifdef CONFIG_DEBUG_CREDENTIALS
	BUG_ON(read_cred_subscribers(old) < 2);
	validate_creds(old);
	validate_creds(new);
#endif
	FUNC0(FUNC4(&new->usage) < 1);

	FUNC15(new, old);

	FUNC6(new); /* we will require a ref for the subj creds too */

	/* dumpability changes */
	if (old->euid != new->euid ||
	    old->egid != new->egid ||
	    old->fsuid != new->fsuid ||
	    old->fsgid != new->fsgid ||
	    !FUNC5(new->cap_permitted, old->cap_permitted)) {
		if (task->mm)
			FUNC16(task->mm, suid_dumpable);
		task->pdeath_signal = 0;
		FUNC17();
	}

	/* alter the thread keyring */
	if (new->fsuid != old->fsuid)
		FUNC9(task);
	if (new->fsgid != old->fsgid)
		FUNC8(task);

	/* do it
	 * - What if a process setreuid()'s and this brings the
	 *   new uid over his NPROC rlimit?  We can check this now
	 *   cheaply with the new uid cache, so if it matters
	 *   we should be checking for it.  -DaveM
	 */
	FUNC1(new, 2);
	if (new->user != old->user)
		FUNC3(&new->user->processes);
	FUNC12(task->real_cred, new);
	FUNC12(task->cred, new);
	if (new->user != old->user)
		FUNC2(&old->user->processes);
	FUNC1(old, -2);

	FUNC14(task);

	/* send notifications */
	if (new->uid   != old->uid  ||
	    new->euid  != old->euid ||
	    new->suid  != old->suid ||
	    new->fsuid != old->fsuid)
		FUNC10(task, PROC_EVENT_UID);

	if (new->gid   != old->gid  ||
	    new->egid  != old->egid ||
	    new->sgid  != old->sgid ||
	    new->fsgid != old->fsgid)
		FUNC10(task, PROC_EVENT_GID);

	/* release the old obj and subj refs both */
	FUNC11(old);
	FUNC11(old);
	return 0;
}