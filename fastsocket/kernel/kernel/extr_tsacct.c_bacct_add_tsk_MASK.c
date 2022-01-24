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
typedef  int /*<<< orphan*/  u64 ;
struct timespec {scalar_t__ tv_sec; } ;
struct taskstats {int /*<<< orphan*/  ac_comm; int /*<<< orphan*/  ac_majflt; int /*<<< orphan*/  ac_minflt; void* ac_stimescaled; void* ac_utimescaled; void* ac_stime; void* ac_utime; int /*<<< orphan*/  ac_ppid; int /*<<< orphan*/  ac_gid; int /*<<< orphan*/  ac_uid; int /*<<< orphan*/  ac_pid; int /*<<< orphan*/  ac_sched; int /*<<< orphan*/  ac_nice; int /*<<< orphan*/  ac_flag; int /*<<< orphan*/  ac_exitcode; scalar_t__ ac_btime; int /*<<< orphan*/  ac_etime; } ;
struct task_struct {int flags; int /*<<< orphan*/  comm; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  min_flt; int /*<<< orphan*/  stimescaled; int /*<<< orphan*/  utimescaled; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; int /*<<< orphan*/  real_parent; int /*<<< orphan*/  pid; int /*<<< orphan*/  policy; int /*<<< orphan*/  exit_code; int /*<<< orphan*/  start_time; } ;
struct cred {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  tgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACORE ; 
 int /*<<< orphan*/  AFORK ; 
 int /*<<< orphan*/  ASU ; 
 int /*<<< orphan*/  AXSIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NSEC_PER_USEC ; 
 int PF_DUMPCORE ; 
 int PF_FORKNOEXEC ; 
 int PF_SIGNALED ; 
 int PF_SUPERPRIV ; 
 scalar_t__ TASK_COMM_LEN ; 
 scalar_t__ TS_COMM_LEN ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 scalar_t__ FUNC12 (struct task_struct*) ; 
 struct timespec FUNC13 (struct timespec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct timespec*) ; 

void FUNC15(struct taskstats *stats, struct task_struct *tsk)
{
	const struct cred *tcred;
	struct timespec uptime, ts;
	u64 ac_etime;

	FUNC0(TS_COMM_LEN < TASK_COMM_LEN);

	/* calculate task elapsed time in timespec */
	FUNC4(&uptime);
	ts = FUNC13(uptime, tsk->start_time);
	/* rebase elapsed time to usec (should never be negative) */
	ac_etime = FUNC14(&ts);
	FUNC3(ac_etime, NSEC_PER_USEC);
	stats->ac_etime = ac_etime;
	stats->ac_btime = FUNC5() - ts.tv_sec;
	if (FUNC12(tsk)) {
		stats->ac_exitcode = tsk->exit_code;
		if (tsk->flags & PF_FORKNOEXEC)
			stats->ac_flag |= AFORK;
	}
	if (tsk->flags & PF_SUPERPRIV)
		stats->ac_flag |= ASU;
	if (tsk->flags & PF_DUMPCORE)
		stats->ac_flag |= ACORE;
	if (tsk->flags & PF_SIGNALED)
		stats->ac_flag |= AXSIG;
	stats->ac_nice	 = FUNC11(tsk);
	stats->ac_sched	 = tsk->policy;
	stats->ac_pid	 = tsk->pid;
	FUNC8();
	tcred = FUNC1(tsk);
	stats->ac_uid	 = tcred->uid;
	stats->ac_gid	 = tcred->gid;
	stats->ac_ppid	 = FUNC6(tsk) ?
				FUNC7(tsk->real_parent)->tgid : 0;
	FUNC9();
	stats->ac_utime = FUNC2(tsk->utime);
	stats->ac_stime = FUNC2(tsk->stime);
	stats->ac_utimescaled = FUNC2(tsk->utimescaled);
	stats->ac_stimescaled = FUNC2(tsk->stimescaled);
	stats->ac_minflt = tsk->min_flt;
	stats->ac_majflt = tsk->maj_flt;

	FUNC10(stats->ac_comm, tsk->comm, sizeof(stats->ac_comm));
}