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
struct task_struct {scalar_t__ exit_state; struct sighand_struct* sighand; int /*<<< orphan*/  exit_signal; struct task_struct* group_leader; int /*<<< orphan*/  tasks; int /*<<< orphan*/  pid; int /*<<< orphan*/  start_time; struct signal_struct* signal; } ;
struct signal_struct {int notify_count; int /*<<< orphan*/  maxrss; struct task_struct* group_exit_task; int /*<<< orphan*/  count; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; int /*<<< orphan*/  action; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {scalar_t__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 scalar_t__ EXIT_DEAD ; 
 scalar_t__ EXIT_ZOMBIE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  PIDTYPE_SID ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct sighand_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct task_struct*) ; 
 struct sighand_struct* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sighand_struct*,struct sighand_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  sighand_cachep ; 
 scalar_t__ FUNC19 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC25 (struct task_struct*) ; 
 scalar_t__ FUNC26 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC27 (struct task_struct*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct task_struct*) ; 

__attribute__((used)) static int FUNC31(struct task_struct *tsk)
{
	struct signal_struct *sig = tsk->signal;
	struct sighand_struct *oldsighand = tsk->sighand;
	spinlock_t *lock = &oldsighand->siglock;
	int count;

	if (FUNC25(tsk))
		goto no_thread_group;

	/*
	 * Kill all other threads in the thread group.
	 */
	FUNC21(lock);
	if (FUNC19(sig)) {
		/*
		 * Another group action in progress, just
		 * return so that the signal is processed.
		 */
		FUNC23(lock);
		return -EAGAIN;
	}
	sig->group_exit_task = tsk;
	FUNC30(tsk);

	/* Account for the thread group leader hanging around: */
	count = FUNC26(tsk) ? 1 : 2;
	sig->notify_count = count;
	while (FUNC3(&sig->count) > count) {
		FUNC2(TASK_UNINTERRUPTIBLE);
		FUNC23(lock);
		FUNC17();
		FUNC21(lock);
	}
	FUNC23(lock);

	/*
	 * At this point all other threads have exited, all we have to
	 * do is to wait for the thread group leader to become inactive,
	 * and to assume its PID:
	 */
	if (!FUNC26(tsk)) {
		struct task_struct *leader = tsk->group_leader;

		sig->notify_count = -1;	/* for exit_notify() */
		for (;;) {
			FUNC28(&tasklist_lock);
			if (FUNC11(leader->exit_state))
				break;
			FUNC2(TASK_UNINTERRUPTIBLE);
			FUNC29(&tasklist_lock);
			FUNC17();
		}

		/*
		 * The only record we have of the real-time age of a
		 * process, regardless of execs it's done, is start_time.
		 * All the past CPU time is accumulated in signal_struct
		 * from sister threads now dead.  But in this non-leader
		 * exec, nothing survives from the original leader thread,
		 * whose birth marks the true age of this process now.
		 * When we take on its identity by switching to its PID, we
		 * also take its birthdate (always earlier than our own).
		 */
		tsk->start_time = leader->start_time;

		FUNC0(!FUNC16(leader, tsk));
		FUNC0(FUNC9(tsk));
		/*
		 * An exec() starts a new thread group with the
		 * TGID of the previous thread group. Rehash the
		 * two threads with a switched PID, and release
		 * the former thread group leader:
		 */

		/* Become a process group leader with the old leader's pid.
		 * The old leader becomes a thread of the this thread group.
		 * Note: The old leader also uses this pid until release_task
		 *       is called.  Odd but simple and correct.
		 */
		FUNC6(tsk, PIDTYPE_PID);
		tsk->pid = leader->pid;
		FUNC5(tsk, PIDTYPE_PID,  FUNC24(leader));
		FUNC27(leader, tsk, PIDTYPE_PGID);
		FUNC27(leader, tsk, PIDTYPE_SID);
		FUNC12(&leader->tasks, &tsk->tasks);

		tsk->group_leader = tsk;
		leader->group_leader = tsk;

		tsk->exit_signal = SIGCHLD;

		FUNC0(leader->exit_state != EXIT_ZOMBIE);
		leader->exit_state = EXIT_DEAD;
		FUNC29(&tasklist_lock);

		FUNC15(leader);
	}

	sig->group_exit_task = NULL;
	sig->notify_count = 0;

no_thread_group:
	if (current->mm)
		FUNC18(&sig->maxrss, current->mm);

	FUNC7(sig);
	FUNC8();

	if (FUNC3(&oldsighand->count) != 1) {
		struct sighand_struct *newsighand;
		/*
		 * This ->sighand is shared with the CLONE_SIGHAND
		 * but not CLONE_THREAD task, switch to the new one.
		 */
		newsighand = FUNC10(sighand_cachep, GFP_KERNEL);
		if (!newsighand)
			return -ENOMEM;

		FUNC4(&newsighand->count, 1);
		FUNC13(newsighand->action, oldsighand->action,
		       sizeof(newsighand->action));

		FUNC28(&tasklist_lock);
		FUNC20(&oldsighand->siglock);
		FUNC14(tsk->sighand, newsighand);
		FUNC22(&oldsighand->siglock);
		FUNC29(&tasklist_lock);

		FUNC1(oldsighand);
	}

	FUNC0(!FUNC26(tsk));
	return 0;
}