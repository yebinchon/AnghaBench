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
struct symtab_and_line {scalar_t__ line; } ;
struct execution_control_state {scalar_t__ stop_func_start; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  END_STEPPING_RANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ STEP_OVER_ALL ; 
 scalar_t__ STEP_OVER_NONE ; 
 scalar_t__ STEP_OVER_UNDEBUGGABLE ; 
 struct symtab_and_line FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct execution_control_state*) ; 
 int /*<<< orphan*/  null_frame_id ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prev_pc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  step_frame_id ; 
 int /*<<< orphan*/  FUNC11 (struct execution_control_state*) ; 
 scalar_t__ step_over_calls ; 
 int /*<<< orphan*/  FUNC12 (struct execution_control_state*) ; 
 int step_range_end ; 
 scalar_t__ step_stop_if_no_debug ; 
 int /*<<< orphan*/  stop_pc ; 
 int stop_step ; 
 int /*<<< orphan*/  FUNC13 (struct execution_control_state*) ; 

__attribute__((used)) static void
FUNC14 (struct execution_control_state *ecs)
{
  CORE_ADDR real_stop_pc;

  if ((step_over_calls == STEP_OVER_NONE)
      || ((step_range_end == 1)
          && FUNC5 (prev_pc, ecs->stop_func_start)))
    {
      /* I presume that step_over_calls is only 0 when we're
         supposed to be stepping at the assembly language level
         ("stepi").  Just stop.  */
      /* Also, maybe we just did a "nexti" inside a prolog,
         so we thought it was a subroutine call but it was not.
         Stop as well.  FENN */
      stop_step = 1;
      FUNC8 (END_STEPPING_RANGE, 0);
      FUNC13 (ecs);
      return;
    }

  if (step_over_calls == STEP_OVER_ALL || FUNC0 (stop_pc))
    {
      /* We're doing a "next".  */

      if (FUNC7 (stop_pc)
          && FUNC4 (step_frame_id,
                             FUNC3 (FUNC9 (), 0)))
        /* We stepped out of a signal handler, and into its
           calling trampoline.  This is misdetected as a
           subroutine call, but stepping over the signal
           trampoline isn't such a bad idea.  In order to do that,
           we have to ignore the value in step_frame_id, since
           that doesn't represent the frame that'll reach when we
           return from the signal trampoline.  Otherwise we'll
           probably continue to the end of the program.  */
        step_frame_id = null_frame_id;

      FUNC12 (ecs);
      FUNC6 (ecs);
      return;
    }

  /* If we are in a function call trampoline (a stub between
     the calling routine and the real function), locate the real
     function.  That's what tells us (a) whether we want to step
     into it at all, and (b) what prologue we want to run to
     the end of, if we do step into it.  */
  real_stop_pc = FUNC10 (stop_pc);
  if (real_stop_pc == 0)
    real_stop_pc = FUNC1 (stop_pc);
  if (real_stop_pc != 0)
    ecs->stop_func_start = real_stop_pc;

  /* If we have line number information for the function we
     are thinking of stepping into, step into it.

     If there are several symtabs at that PC (e.g. with include
     files), just want to know whether *any* of them have line
     numbers.  find_pc_line handles this.  */
  {
    struct symtab_and_line tmp_sal;

    tmp_sal = FUNC2 (ecs->stop_func_start, 0);
    if (tmp_sal.line != 0)
      {
        FUNC11 (ecs);
        return;
      }
  }

  /* If we have no line number and the step-stop-if-no-debug
     is set, we stop the step so that the user has a chance to
     switch in assembly mode.  */
  if (step_over_calls == STEP_OVER_UNDEBUGGABLE && step_stop_if_no_debug)
    {
      stop_step = 1;
      FUNC8 (END_STEPPING_RANGE, 0);
      FUNC13 (ecs);
      return;
    }

  FUNC12 (ecs);
  FUNC6 (ecs);
  return;
}