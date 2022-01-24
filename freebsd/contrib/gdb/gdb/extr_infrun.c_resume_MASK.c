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
struct cleanup {int dummy; } ;
typedef  void* ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int kind; } ;

/* Variables and functions */
 scalar_t__ CANNOT_STEP_BREAKPOINT ; 
 scalar_t__ CANNOT_STEP_HW_WATCHPOINTS ; 
 int /*<<< orphan*/  DO_DEFERRED_STORES ; 
 int /*<<< orphan*/  QUIT ; 
 void* RESUME_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 () ; 
#define  TARGET_WAITKIND_EXECD 130 
#define  TARGET_WAITKIND_FORKED 129 
 void* TARGET_WAITKIND_SPURIOUS ; 
#define  TARGET_WAITKIND_VFORKED 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ breakpoints_inserted ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* inferior_ptid ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ pending_follow ; 
 scalar_t__ permanent_breakpoint_here ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  resume_cleanups ; 
 scalar_t__ schedlock_on ; 
 scalar_t__ schedlock_step ; 
 scalar_t__ scheduler_mode ; 
 int singlestep_breakpoints_inserted_p ; 
 void* singlestep_ptid ; 
 scalar_t__ stepping_past_singlestep_breakpoint ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11 (int step, enum target_signal sig)
{
  int should_resume = 1;
  struct cleanup *old_cleanups = FUNC6 (resume_cleanups, 0);
  QUIT;

  /* FIXME: calling breakpoint_here_p (read_pc ()) three times! */


  /* Some targets (e.g. Solaris x86) have a kernel bug when stepping
     over an instruction that causes a page fault without triggering
     a hardware watchpoint. The kernel properly notices that it shouldn't
     stop, because the hardware watchpoint is not triggered, but it forgets
     the step request and continues the program normally.
     Work around the problem by removing hardware watchpoints if a step is
     requested, GDB will check for a hardware watchpoint trigger after the
     step anyway.  */
  if (CANNOT_STEP_HW_WATCHPOINTS && step && breakpoints_inserted)
    FUNC8 ();


  /* Normally, by the time we reach `resume', the breakpoints are either
     removed or inserted, as appropriate.  The exception is if we're sitting
     at a permanent breakpoint; we need to step over it, but permanent
     breakpoints can't be removed.  So we have to test for it here.  */
  if (FUNC3 (FUNC7 ()) == permanent_breakpoint_here)
    FUNC0 ();

  if (FUNC2 () && step)
    {
      /* Do it the hard way, w/temp breakpoints */
      FUNC1 (sig, 1 /*insert-breakpoints */ );
      /* ...and don't ask hardware to do it.  */
      step = 0;
      /* and do not pull these breakpoints until after a `wait' in
         `wait_for_inferior' */
      singlestep_breakpoints_inserted_p = 1;
      singlestep_ptid = inferior_ptid;
    }

  /* Handle any optimized stores to the inferior NOW...  */
#ifdef DO_DEFERRED_STORES
  DO_DEFERRED_STORES;
#endif

  /* If there were any forks/vforks/execs that were caught and are
     now to be followed, then do so.  */
  switch (pending_follow.kind)
    {
    case TARGET_WAITKIND_FORKED:
    case TARGET_WAITKIND_VFORKED:
      pending_follow.kind = TARGET_WAITKIND_SPURIOUS;
      if (FUNC5 ())
	should_resume = 0;
      break;

    case TARGET_WAITKIND_EXECD:
      /* follow_exec is called as soon as the exec event is seen. */
      pending_follow.kind = TARGET_WAITKIND_SPURIOUS;
      break;

    default:
      break;
    }

  /* Install inferior's terminal modes.  */
  FUNC10 ();

  if (should_resume)
    {
      ptid_t resume_ptid;

      resume_ptid = RESUME_ALL;	/* Default */

      if ((step || singlestep_breakpoints_inserted_p) &&
	  (stepping_past_singlestep_breakpoint
	   || (!breakpoints_inserted && FUNC3 (FUNC7 ()))))
	{
	  /* Stepping past a breakpoint without inserting breakpoints.
	     Make sure only the current thread gets to step, so that
	     other threads don't sneak past breakpoints while they are
	     not inserted. */

	  resume_ptid = inferior_ptid;
	}

      if ((scheduler_mode == schedlock_on) ||
	  (scheduler_mode == schedlock_step &&
	   (step || singlestep_breakpoints_inserted_p)))
	{
	  /* User-settable 'scheduler' mode requires solo thread resume. */
	  resume_ptid = inferior_ptid;
	}

      if (CANNOT_STEP_BREAKPOINT)
	{
	  /* Most targets can step a breakpoint instruction, thus
	     executing it normally.  But if this one cannot, just
	     continue and we will hit it anyway.  */
	  if (step && breakpoints_inserted && FUNC3 (FUNC7 ()))
	    step = 0;
	}
      FUNC9 (resume_ptid, step, sig);
    }

  FUNC4 (old_cleanups);
}