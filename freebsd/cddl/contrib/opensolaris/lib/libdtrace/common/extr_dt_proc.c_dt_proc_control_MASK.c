#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wstop ;
struct ps_prochandle {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  pr_what; int /*<<< orphan*/  pr_why; } ;
typedef  TYPE_1__ lwpstatus_t ;
struct TYPE_19__ {int /*<<< orphan*/ * dt_procs; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_20__ {int dpr_pid; int /*<<< orphan*/  dpr_lock; int /*<<< orphan*/  dpr_cv; scalar_t__ dpr_tid; void* dpr_done; void* dpr_quit; struct ps_prochandle* dpr_proc; } ;
typedef  TYPE_3__ dt_proc_t ;
typedef  int /*<<< orphan*/  dt_proc_hash_t ;
struct TYPE_21__ {TYPE_3__* dpcd_proc; TYPE_2__* dpcd_hdl; } ;
typedef  TYPE_4__ dt_proc_control_data_t ;
struct TYPE_17__ {int pr_flags; TYPE_1__ pr_lwp; } ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DT_PROC_STOP_CREATE ; 
 int /*<<< orphan*/  DT_PROC_STOP_GRAB ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FLTBPT ; 
 int /*<<< orphan*/  FLTTRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCNULL ; 
 long PCWSTOP ; 
 int /*<<< orphan*/  PR_ASYNC ; 
 int /*<<< orphan*/  PR_BPTADJ ; 
 int /*<<< orphan*/  PR_FAULTED ; 
 int /*<<< orphan*/  PR_FORK ; 
 int PR_KLC ; 
 int /*<<< orphan*/  PR_REQUESTED ; 
 int /*<<< orphan*/  PR_SYSENTRY ; 
 int /*<<< orphan*/  PR_SYSEXIT ; 
#define  PS_LOST 130 
#define  PS_STOP 129 
#define  PS_UNDEAD 128 
 int /*<<< orphan*/  PTHREAD_CANCEL_DISABLE ; 
 int FUNC2 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps_prochandle*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC5 (struct ps_prochandle*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ps_prochandle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const FUNC7 (struct ps_prochandle*) ; 
 TYPE_16__* FUNC8 (struct ps_prochandle*) ; 
 int FUNC9 (struct ps_prochandle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC11 (struct ps_prochandle*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct ps_prochandle*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct ps_prochandle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_execve ; 
 int /*<<< orphan*/  SYS_forksys ; 
 int /*<<< orphan*/  SYS_vfork ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 scalar_t__ errno ; 
 int FUNC23 (struct ps_prochandle*) ; 
 TYPE_1__* FUNC24 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC25 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 int FUNC31 (int,long const*,int) ; 

__attribute__((used)) static void *
FUNC32(void *arg)
{
	dt_proc_control_data_t *datap = arg;
	dtrace_hdl_t *dtp = datap->dpcd_hdl;
	dt_proc_t *dpr = datap->dpcd_proc;
	dt_proc_hash_t *dph = dtp->dt_procs;
	struct ps_prochandle *P = dpr->dpr_proc;
	int pid = dpr->dpr_pid;

#ifdef illumos
	int pfd = Pctlfd(P);

	const long wstop = PCWSTOP;
#endif
	int notify = B_FALSE;

	/*
	 * We disable the POSIX thread cancellation mechanism so that the
	 * client program using libdtrace can't accidentally cancel our thread.
	 * dt_proc_destroy() uses SIGCANCEL explicitly to simply poke us out
	 * of PCWSTOP with EINTR, at which point we will see dpr_quit and exit.
	 */
	(void) FUNC29(PTHREAD_CANCEL_DISABLE, NULL);

	/*
	 * Set up the corresponding process for tracing by libdtrace.  We want
	 * to be able to catch breakpoints and efficiently single-step over
	 * them, and we need to enable librtld_db to watch libdl activity.
	 */
	(void) FUNC27(&dpr->dpr_lock);

#ifdef illumos
	(void) Punsetflags(P, PR_ASYNC);	/* require synchronous mode */
	(void) Psetflags(P, PR_BPTADJ);		/* always adjust eip on x86 */
	(void) Punsetflags(P, PR_FORK);		/* do not inherit on fork */

	(void) Pfault(P, FLTBPT, B_TRUE);	/* always trace breakpoints */
	(void) Pfault(P, FLTTRACE, B_TRUE);	/* always trace single-step */

	/*
	 * We must trace exit from exec() system calls so that if the exec is
	 * successful, we can reset our breakpoints and re-initialize libproc.
	 */
	(void) Psysexit(P, SYS_execve, B_TRUE);

	/*
	 * We must trace entry and exit for fork() system calls in order to
	 * disable our breakpoints temporarily during the fork.  We do not set
	 * the PR_FORK flag, so if fork succeeds the child begins executing and
	 * does not inherit any other tracing behaviors or a control thread.
	 */
	(void) Psysentry(P, SYS_vfork, B_TRUE);
	(void) Psysexit(P, SYS_vfork, B_TRUE);
	(void) Psysentry(P, SYS_forksys, B_TRUE);
	(void) Psysexit(P, SYS_forksys, B_TRUE);

	Psync(P);				/* enable all /proc changes */
#endif
	FUNC15(dpr, B_FALSE);		/* enable rtld breakpoints */

	/*
	 * If PR_KLC is set, we created the process; otherwise we grabbed it.
	 * Check for an appropriate stop request and wait for dt_proc_continue.
	 */
#ifdef illumos
	if (Pstatus(P)->pr_flags & PR_KLC)
#else
	if (FUNC23(P) & PR_KLC)
#endif
		FUNC21(dpr, DT_PROC_STOP_CREATE);
	else
		FUNC21(dpr, DT_PROC_STOP_GRAB);

	if (FUNC6(P, 0, 0) == -1) {
		FUNC14("pid %d: failed to set running: %s\n",
		    (int)dpr->dpr_pid, FUNC30(errno));
	}

	(void) FUNC28(&dpr->dpr_lock);

	/*
	 * Wait for the process corresponding to this control thread to stop,
	 * process the event, and then set it running again.  We want to sleep
	 * with dpr_lock *unheld* so that other parts of libdtrace can use the
	 * ps_prochandle in the meantime (e.g. ustack()).  To do this, we write
	 * a PCWSTOP directive directly to the underlying /proc/<pid>/ctl file.
	 * Once the process stops, we wake up, grab dpr_lock, and then call
	 * Pwait() (which will return immediately) and do our processing.
	 */
	while (!dpr->dpr_quit) {
		const lwpstatus_t *psp;

#ifdef illumos
		if (write(pfd, &wstop, sizeof (wstop)) == -1 && errno == EINTR)
			continue; /* check dpr_quit and continue waiting */
#else
		/* Wait for the process to report status. */
		FUNC25(P);
		if (errno == EINTR)
			continue; /* check dpr_quit and continue waiting */
#endif

		(void) FUNC27(&dpr->dpr_lock);

#ifdef illumos
pwait_locked:
		if (Pstopstatus(P, PCNULL, 0) == -1 && errno == EINTR) {
			(void) pthread_mutex_unlock(&dpr->dpr_lock);
			continue; /* check dpr_quit and continue waiting */
		}
#endif

		switch (FUNC7(P)) {
		case PS_STOP:
#ifdef illumos
			psp = &Pstatus(P)->pr_lwp;
#else
			psp = FUNC24(P);
#endif

			FUNC14("pid %d: proc stopped showing %d/%d\n",
			    pid, psp->pr_why, psp->pr_what);

			/*
			 * If the process stops showing PR_REQUESTED, then the
			 * DTrace stop() action was applied to it or another
			 * debugging utility (e.g. pstop(1)) asked it to stop.
			 * In either case, the user's intention is for the
			 * process to remain stopped until another external
			 * mechanism (e.g. prun(1)) is applied.  So instead of
			 * setting the process running ourself, we wait for
			 * someone else to do so.  Once that happens, we return
			 * to our normal loop waiting for an event of interest.
			 */
			if (psp->pr_why == PR_REQUESTED) {
				FUNC22(dpr);
				(void) FUNC28(&dpr->dpr_lock);
				continue;
			}

			/*
			 * If the process stops showing one of the events that
			 * we are tracing, perform the appropriate response.
			 * Note that we ignore PR_SUSPENDED, PR_CHECKPOINT, and
			 * PR_JOBCONTROL by design: if one of these conditions
			 * occurs, we will fall through to Psetrun() but the
			 * process will remain stopped in the kernel by the
			 * corresponding mechanism (e.g. job control stop).
			 */
			if (psp->pr_why == PR_FAULTED && psp->pr_what == FLTBPT)
				FUNC19(dtp, dpr);
			else if (psp->pr_why == PR_SYSENTRY &&
			    FUNC1(psp->pr_what))
				FUNC17(dpr);
			else if (psp->pr_why == PR_SYSEXIT &&
			    FUNC1(psp->pr_what))
				FUNC18(dpr);
			else if (psp->pr_why == PR_SYSEXIT &&
			    FUNC0(psp->pr_what))
				FUNC15(dpr, B_TRUE);
			break;

		case PS_LOST:
#ifdef illumos
			if (Preopen(P) == 0)
				goto pwait_locked;
#endif

			FUNC14("pid %d: proc lost: %s\n",
			    pid, FUNC30(errno));

			dpr->dpr_quit = B_TRUE;
			notify = B_TRUE;
			break;

		case PS_UNDEAD:
			FUNC14("pid %d: proc died\n", pid);
			dpr->dpr_quit = B_TRUE;
			notify = B_TRUE;
			break;
		}

		if (FUNC7(P) != PS_UNDEAD && FUNC6(P, 0, 0) == -1) {
			FUNC14("pid %d: failed to set running: %s\n",
			    (int)dpr->dpr_pid, FUNC30(errno));
		}

		(void) FUNC28(&dpr->dpr_lock);
	}

	/*
	 * If the control thread detected PS_UNDEAD or PS_LOST, then enqueue
	 * the dt_proc_t structure on the dt_proc_hash_t notification list.
	 */
	if (notify)
		FUNC20(dtp, dph, dpr, NULL);

	/*
	 * Destroy and remove any remaining breakpoints, set dpr_done and clear
	 * dpr_tid to indicate the control thread has exited, and notify any
	 * waiting thread in dt_proc_destroy() that we have succesfully exited.
	 */
	(void) FUNC27(&dpr->dpr_lock);

	FUNC16(dpr, B_TRUE);
	dpr->dpr_done = B_TRUE;
	dpr->dpr_tid = 0;

	(void) FUNC26(&dpr->dpr_cv);
	(void) FUNC28(&dpr->dpr_lock);

	return (NULL);
}