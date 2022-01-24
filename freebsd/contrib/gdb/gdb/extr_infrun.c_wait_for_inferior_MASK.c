#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct execution_control_state {int /*<<< orphan*/  wait_some_more; int /*<<< orphan*/  wp; int /*<<< orphan*/  waiton_ptid; int /*<<< orphan*/  ptid; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  delete_breakpoint_current_contents ; 
 int /*<<< orphan*/  delete_step_resume_breakpoint ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (struct execution_control_state*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (struct execution_control_state*) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int overlay_cache_invalid ; 
 int /*<<< orphan*/  previous_inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  step_resume_breakpoint ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  through_sigtramp_breakpoint ; 

void
FUNC7 (void)
{
  struct cleanup *old_cleanups;
  struct execution_control_state ecss;
  struct execution_control_state *ecs;

  old_cleanups = FUNC3 (delete_step_resume_breakpoint,
			       &step_resume_breakpoint);
  FUNC3 (delete_breakpoint_current_contents,
		&through_sigtramp_breakpoint);

  /* wfi still stays in a loop, so it's OK just to take the address of
     a local to get the ecs pointer.  */
  ecs = &ecss;

  /* Fill in with reasonable starting values.  */
  FUNC2 (ecs);

  /* We'll update this if & when we switch to a new thread. */
  previous_inferior_ptid = inferior_ptid;

  overlay_cache_invalid = 1;

  /* We have to invalidate the registers BEFORE calling target_wait
     because they can be loaded from the target while in target_wait.
     This makes remote debugging a bit more efficient for those
     targets that provide critical registers as part of their normal
     status mechanism. */

  FUNC4 ();

  while (1)
    {
      if (&target_wait_hook)
	ecs->ptid = FUNC6 (ecs->waiton_ptid, ecs->wp);
      else
	ecs->ptid = FUNC5 (ecs->waiton_ptid, ecs->wp);

      /* Now figure out what to do with the result of the result.  */
      FUNC1 (ecs);

      if (!ecs->wait_some_more)
	break;
    }
  FUNC0 (old_cleanups);
}