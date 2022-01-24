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
struct frame_info {int dummy; } ;
struct TYPE_2__ {int integer; } ;
struct continuation_arg {TYPE_1__ data; struct continuation_arg* next; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  STEP_OVER_ALL ; 
 int /*<<< orphan*/  STEP_OVER_NONE ; 
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct continuation_arg*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**,int*,int*) ; 
 struct frame_info* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  step_1_continuation ; 
 int /*<<< orphan*/  step_frame_id ; 
 int step_multi ; 
 int /*<<< orphan*/  step_over_calls ; 
 int step_range_end ; 
 int step_range_start ; 
 int /*<<< orphan*/  step_sp ; 
 scalar_t__ step_stop_if_no_debug ; 
 int /*<<< orphan*/  stop_pc ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void 
FUNC12 (int skip_subroutines, int single_inst, int count)
{ 
  struct continuation_arg *arg1; 
  struct continuation_arg *arg2;
  struct continuation_arg *arg3; 
  struct frame_info *frame;

  if (count > 0)
    {
      FUNC1 ();

      frame = FUNC5 ();
      if (!frame)		/* Avoid coredump here.  Why tho? */
	FUNC2 ("No current frame");
      step_frame_id = FUNC6 (frame);
      step_sp = FUNC9 ();

      if (!single_inst)
	{
	  FUNC3 (stop_pc, &step_range_start, &step_range_end);

	  /* If we have no line info, switch to stepi mode.  */
	  if (step_range_end == 0 && step_stop_if_no_debug)
	    {
	      step_range_start = step_range_end = 1;
	    }
	  else if (step_range_end == 0)
	    {
	      char *name;
	      if (FUNC4 (stop_pc, &name, &step_range_start,
					    &step_range_end) == 0)
		FUNC2 ("Cannot find bounds of current function");

	      FUNC10 ();
	      FUNC7 ("\
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
      arg1 =
	(struct continuation_arg *) FUNC11 (sizeof (struct continuation_arg));
      arg2 =
	(struct continuation_arg *) FUNC11 (sizeof (struct continuation_arg));
      arg3 =
	(struct continuation_arg *) FUNC11 (sizeof (struct continuation_arg));
      arg1->next = arg2;
      arg1->data.integer = skip_subroutines;
      arg2->next = arg3;
      arg2->data.integer = single_inst;
      arg3->next = NULL;
      arg3->data.integer = count;
      FUNC0 (step_1_continuation, arg1);
      FUNC8 ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 1);
    }
}