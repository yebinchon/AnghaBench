#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int exit_code; int exit_signal; TYPE_4__* parent; TYPE_1__* signal; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; struct task_struct* group_leader; } ;
struct siginfo {int si_signo; int si_status; int /*<<< orphan*/  si_code; void* si_stime; void* si_utime; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_pid; scalar_t__ si_errno; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; TYPE_3__* action; } ;
struct TYPE_12__ {int /*<<< orphan*/  uid; } ;
struct TYPE_11__ {struct sighand_struct* sighand; } ;
struct TYPE_9__ {scalar_t__ sa_handler; int sa_flags; } ;
struct TYPE_10__ {TYPE_2__ sa; } ;
struct TYPE_8__ {int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLD_DUMPED ; 
 int /*<<< orphan*/  CLD_EXITED ; 
 int /*<<< orphan*/  CLD_KILLED ; 
 int SA_NOCLDWAIT ; 
 int SIGCHLD ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int,struct siginfo*,TYPE_4__*) ; 
 TYPE_6__* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct task_struct *tsk, int sig)
{
	struct siginfo info;
	unsigned long flags;
	struct sighand_struct *psig;
	int ret = sig;

	FUNC0(sig == -1);

 	/* do_notify_parent_cldstop should have been called instead.  */
 	FUNC0(FUNC11(tsk));

	FUNC0(!FUNC13(tsk) &&
	       (tsk->group_leader != tsk || !FUNC14(tsk)));

	info.si_signo = sig;
	info.si_errno = 0;
	/*
	 * we are under tasklist_lock here so our parent is tied to
	 * us and cannot exit and release its namespace.
	 *
	 * the only it can is to switch its nsproxy with sys_unshare,
	 * bu uncharing pid namespaces is not allowed, so we'll always
	 * see relevant namespace
	 *
	 * write_lock() currently calls preempt_disable() which is the
	 * same as rcu_read_lock(), but according to Oleg, this is not
	 * correct to rely on this
	 */
	FUNC6();
	info.si_pid = FUNC12(tsk, FUNC10(tsk->parent));
	info.si_uid = FUNC2(tsk)->uid;
	FUNC7();

	info.si_utime = FUNC5(FUNC4(tsk->utime,
				tsk->signal->utime));
	info.si_stime = FUNC5(FUNC4(tsk->stime,
				tsk->signal->stime));

	info.si_status = tsk->exit_code & 0x7f;
	if (tsk->exit_code & 0x80)
		info.si_code = CLD_DUMPED;
	else if (tsk->exit_code & 0x7f)
		info.si_code = CLD_KILLED;
	else {
		info.si_code = CLD_EXITED;
		info.si_status = tsk->exit_code >> 8;
	}

	psig = tsk->parent->sighand;
	FUNC8(&psig->siglock, flags);
	if (!FUNC13(tsk) && sig == SIGCHLD &&
	    (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN ||
	     (psig->action[SIGCHLD-1].sa.sa_flags & SA_NOCLDWAIT))) {
		/*
		 * We are exiting and our parent doesn't care.  POSIX.1
		 * defines special semantics for setting SIGCHLD to SIG_IGN
		 * or setting the SA_NOCLDWAIT flag: we should be reaped
		 * automatically and not left for our parent's wait4 call.
		 * Rather than having the parent do it as a magic kind of
		 * signal handler, we just set this to tell do_exit that we
		 * can be cleaned up without becoming a zombie.  Note that
		 * we still call __wake_up_parent in this case, because a
		 * blocked sys_wait4 might now return -ECHILD.
		 *
		 * Whether we send SIGCHLD or not for SA_NOCLDWAIT
		 * is implementation-defined: we do (if you don't want
		 * it, just use SIG_IGN instead).
		 */
		ret = tsk->exit_signal = -1;
		if (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN)
			sig = -1;
	}
	if (FUNC15(sig) && sig > 0)
		FUNC1(sig, &info, tsk->parent);
	FUNC3(tsk, tsk->parent);
	FUNC9(&psig->siglock, flags);

	return ret;
}