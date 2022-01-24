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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {TYPE_1__* sighand; } ;
struct siginfo {int dummy; } ;
struct pid {int dummy; } ;
struct cred {scalar_t__ suid; scalar_t__ uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int FUNC0 (int,struct siginfo*,struct task_struct*,int,int /*<<< orphan*/ ) ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 struct task_struct* FUNC2 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct task_struct*,struct siginfo*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct siginfo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(int sig, struct siginfo *info, struct pid *pid,
		      uid_t uid, uid_t euid, u32 secid)
{
	int ret = -EINVAL;
	struct task_struct *p;
	const struct cred *pcred;

	if (!FUNC9(sig))
		return ret;

	FUNC3(&tasklist_lock);
	p = FUNC2(pid, PIDTYPE_PID);
	if (!p) {
		ret = -ESRCH;
		goto out_unlock;
	}
	pcred = FUNC1(p);
	if (FUNC6(info) &&
	    euid != pcred->suid && euid != pcred->uid &&
	    uid  != pcred->suid && uid  != pcred->uid) {
		ret = -EPERM;
		goto out_unlock;
	}
	ret = FUNC5(p, info, sig, secid);
	if (ret)
		goto out_unlock;
	if (sig && p->sighand) {
		unsigned long flags;
		FUNC7(&p->sighand->siglock, flags);
		ret = FUNC0(sig, info, p, 1, 0);
		FUNC8(&p->sighand->siglock, flags);
	}
out_unlock:
	FUNC4(&tasklist_lock);
	return ret;
}