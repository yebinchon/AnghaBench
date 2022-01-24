#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  tid; } ;
struct TYPE_6__ {int /*<<< orphan*/  sig; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
struct TYPE_5__ {scalar_t__ reply; } ;
struct TYPE_8__ {TYPE_3__ status; int /*<<< orphan*/  thread; TYPE_1__ exc; } ;
struct inf {struct proc* step_thread; int /*<<< orphan*/  pid; int /*<<< orphan*/  event_port; TYPE_4__ wait; scalar_t__ nomsg; scalar_t__ stopped; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TARGET_SIGNAL_0 ; 
 struct inf* current_inferior ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inf*) ; 
 int /*<<< orphan*/  FUNC3 (struct inf*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct inf*) ; 
 int /*<<< orphan*/  FUNC5 (struct inf*,struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inf*,struct proc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inf*,int) ; 
 struct proc* FUNC8 (struct inf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct inf*) ; 
 int /*<<< orphan*/  FUNC10 (struct inf*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,...) ; 

__attribute__((used)) static void
FUNC16 (ptid_t tid, int step, enum target_signal sig)
{
  struct proc *step_thread = 0;
  struct inf *inf = current_inferior;

  FUNC3 (inf, "tid = %d, step = %d, sig = %d", FUNC0 (tid), step, sig);

  FUNC10 (inf);

  if (sig != TARGET_SIGNAL_0 || inf->stopped)
    {
      if (sig == TARGET_SIGNAL_0 && inf->nomsg)
	FUNC2 (inf);
      else
	FUNC7 (inf, sig);
    }
  else if (inf->wait.exc.reply != MACH_PORT_NULL)
    /* We received an exception to which we have chosen not to forward, so
       abort the faulting thread, which will perhaps retake it.  */
    {
      FUNC12 (inf->wait.thread, 1);
      FUNC15 ("Aborting %s with unforwarded exception %s.",
	       FUNC13 (inf->wait.thread),
	       FUNC14 (inf->wait.status.value.sig));
    }

  if (FUNC11 (inf->event_port))
    /* If there are still messages in our event queue, don't bother resuming
       the process, as we're just going to stop it right away anyway. */
    return;

  FUNC9 (inf);

  if (FUNC0 (tid) < 0)
    /* Allow all threads to run, except perhaps single-stepping one.  */
    {
      FUNC3 (inf, "running all threads; tid = %d", FUNC0 (inferior_ptid));
      tid = inferior_ptid;	/* What to step. */
      FUNC6 (inf, 0, 1);
    }
  else
    /* Just allow a single thread to run.  */
    {
      struct proc *thread = FUNC8 (inf, FUNC0 (tid));
      if (!thread)
	FUNC1 ("Can't run single thread id %d: no such thread!");
      FUNC3 (inf, "running one thread: %d/%d", inf->pid, thread->tid);
      FUNC6 (inf, thread, 0);
    }

  if (step)
    {
      step_thread = FUNC8 (inf, FUNC0 (tid));
      if (!step_thread)
	FUNC15 ("Can't step thread id %d: no such thread.", FUNC0 (tid));
      else
	FUNC3 (inf, "stepping thread: %d/%d", inf->pid, step_thread->tid);
    }
  if (step_thread != inf->step_thread)
    FUNC5 (inf, step_thread);

  FUNC3 (inf, "here we go...");
  FUNC4 (inf);
}