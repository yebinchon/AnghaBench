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
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_INFERIOR ; 
 int /*<<< orphan*/  STEP_OVER_ALL ; 
 int /*<<< orphan*/  STEP_OVER_NONE ; 
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  disable_longjmp_breakpoint_cleanup ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ event_loop_p ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char**,int*,int*) ; 
 struct frame_info* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct frame_info*) ; 
 struct cleanup* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  step_frame_id ; 
 int step_multi ; 
 int /*<<< orphan*/  FUNC15 (int,int,int) ; 
 int /*<<< orphan*/  step_over_calls ; 
 int step_range_end ; 
 int step_range_start ; 
 int /*<<< orphan*/  step_sp ; 
 int /*<<< orphan*/  stop_pc ; 
 int /*<<< orphan*/  stop_step ; 
 int FUNC16 (char**) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void
FUNC19 (int skip_subroutines, int single_inst, char *count_string)
{
  int count = 1;
  struct frame_info *frame;
  struct cleanup *cleanups = 0;
  int async_exec = 0;

  ERROR_NO_INFERIOR;

  if (count_string)
    async_exec = FUNC16 (&count_string);

  /* If we get a request for running in the bg but the target
     doesn't support it, error out. */
  if (event_loop_p && async_exec && !FUNC17 ())
    FUNC4 ("Asynchronous execution not supported on this target.");

  /* If we don't get a request of running in the bg, then we need
     to simulate synchronous (fg) execution. */
  if (event_loop_p && !async_exec && FUNC17 ())
    {
      /* Simulate synchronous execution */
      FUNC0 ();
    }

  count = count_string ? FUNC11 (count_string) : 1;

  if (!single_inst || skip_subroutines)		/* leave si command alone */
    {
      FUNC3 ();
      if (!event_loop_p || !FUNC17 ())
	cleanups = FUNC9 (disable_longjmp_breakpoint_cleanup, 0 /*ignore*/);
      else
        FUNC10 (disable_longjmp_breakpoint_cleanup, 0 /*ignore*/);
    }

  /* In synchronous case, all is well, just use the regular for loop. */
  if (!event_loop_p || !FUNC17 ())
    {
      for (; count > 0; count--)
	{
	  FUNC1 ();

	  frame = FUNC7 ();
	  if (!frame)		/* Avoid coredump here.  Why tho? */
	    FUNC4 ("No current frame");
	  step_frame_id = FUNC8 (frame);
	  step_sp = FUNC14 ();

	  if (!single_inst)
	    {
	      FUNC5 (stop_pc, &step_range_start, &step_range_end);
	      if (step_range_end == 0)
		{
		  char *name;
		  if (FUNC6 (stop_pc, &name, &step_range_start,
						&step_range_end) == 0)
		    FUNC4 ("Cannot find bounds of current function");

		  FUNC18 ();
		  FUNC12 ("\
Single stepping until exit from function %s, \n\
which has no line number information.\n", name);
		}
	    }
	  else
	    {
	      /* Say we are stepping, but stop after one insn whatever it does.  */
	      step_range_start = step_range_end = 1;
	      if (!skip_subroutines)
		/* It is stepi.
		   Don't step over function calls, not even to functions lacking
		   line numbers.  */
		step_over_calls = STEP_OVER_NONE;
	    }

	  if (skip_subroutines)
	    step_over_calls = STEP_OVER_ALL;

	  step_multi = (count > 1);
	  FUNC13 ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 1);

	  if (!stop_step)
	    break;
	}

      if (!single_inst || skip_subroutines)
	FUNC2 (cleanups);
      return;
    }
  /* In case of asynchronous target things get complicated, do only
     one step for now, before returning control to the event loop. Let
     the continuation figure out how many other steps we need to do,
     and handle them one at the time, through step_once(). */
  else
    {
      if (event_loop_p && FUNC17 ())
	FUNC15 (skip_subroutines, single_inst, count);
    }
}