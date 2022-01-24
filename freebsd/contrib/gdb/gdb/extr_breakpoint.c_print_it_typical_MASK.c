#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct cleanup {int dummy; } ;
typedef  enum print_stop_action { ____Placeholder_print_stop_action } print_stop_action ;
typedef  TYPE_2__* bpstat ;
struct TYPE_7__ {int type; int /*<<< orphan*/ * val; int /*<<< orphan*/  number; int /*<<< orphan*/  exec_pathname; int /*<<< orphan*/  forked_inferior_pid; int /*<<< orphan*/  triggered_dll_pathname; TYPE_1__* loc; } ;
struct TYPE_6__ {TYPE_4__* breakpoint_at; int /*<<< orphan*/ * old_val; } ;
struct TYPE_5__ {int /*<<< orphan*/  address; int /*<<< orphan*/  requested_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_EXCEPTION_CATCH_FILE ; 
 int /*<<< orphan*/  CURRENT_EXCEPTION_CATCH_LINE ; 
 int /*<<< orphan*/  CURRENT_EXCEPTION_CATCH_PC ; 
 int /*<<< orphan*/  CURRENT_EXCEPTION_KIND ; 
 int /*<<< orphan*/  CURRENT_EXCEPTION_THROW_FILE ; 
 int /*<<< orphan*/  CURRENT_EXCEPTION_THROW_LINE ; 
 int /*<<< orphan*/  CURRENT_EXCEPTION_THROW_PC ; 
 int /*<<< orphan*/  EX_EVENT_CATCH ; 
 int /*<<< orphan*/  EX_EVENT_THROW ; 
 int PRINT_NOTHING ; 
 int PRINT_SRC_AND_LOC ; 
 int PRINT_SRC_ONLY ; 
 int PRINT_UNKNOWN ; 
 int /*<<< orphan*/  Val_pretty_default ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  bp_access_watchpoint 152 
#define  bp_breakpoint 151 
#define  bp_call_dummy 150 
#define  bp_catch_catch 149 
#define  bp_catch_exec 148 
#define  bp_catch_fork 147 
#define  bp_catch_load 146 
#define  bp_catch_throw 145 
#define  bp_catch_unload 144 
#define  bp_catch_vfork 143 
#define  bp_finish 142 
#define  bp_hardware_breakpoint 141 
#define  bp_hardware_watchpoint 140 
#define  bp_longjmp 139 
#define  bp_longjmp_resume 138 
#define  bp_none 137 
#define  bp_overlay_event 136 
#define  bp_read_watchpoint 135 
#define  bp_shlib_event 134 
#define  bp_step_resume 133 
#define  bp_thread_event 132 
#define  bp_through_sigtramp 131 
#define  bp_until 130 
#define  bp_watchpoint 129 
#define  bp_watchpoint_scope 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_exception_event ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 struct cleanup* FUNC5 (struct ui_stream*) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct ui_stream* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum print_stop_action
FUNC17 (bpstat bs)
{
  struct cleanup *old_chain, *ui_out_chain;
  struct ui_stream *stb;
  stb = FUNC13 (uiout);
  old_chain = FUNC5 (stb);
  /* bs->breakpoint_at can be NULL if it was a momentary breakpoint
     which has since been deleted.  */
  if (bs->breakpoint_at == NULL)
    return PRINT_UNKNOWN;

  switch (bs->breakpoint_at->type)
    {
    case bp_breakpoint:
    case bp_hardware_breakpoint:
      if (bs->breakpoint_at->loc->address != bs->breakpoint_at->loc->requested_address)
	FUNC3 (bs->breakpoint_at->loc->requested_address,
	                               bs->breakpoint_at->loc->address,
				       bs->breakpoint_at->number, 1);
      FUNC0 (bs->breakpoint_at->number);
      FUNC14 (uiout, "\nBreakpoint ");
      if (FUNC12 (uiout))
	FUNC11 (uiout, "reason", "breakpoint-hit");
      FUNC9 (uiout, "bkptno", bs->breakpoint_at->number);
      FUNC14 (uiout, ", ");
      return PRINT_SRC_AND_LOC;
      break;

    case bp_shlib_event:
      /* Did we stop because the user set the stop_on_solib_events
	 variable?  (If so, we report this as a generic, "Stopped due
	 to shlib event" message.) */
      FUNC8 ("Stopped due to shared library event\n");
      return PRINT_NOTHING;
      break;

    case bp_thread_event:
      /* Not sure how we will get here. 
	 GDB should not stop for these breakpoints.  */
      FUNC8 ("Thread Event Breakpoint: gdb should not stop!\n");
      return PRINT_NOTHING;
      break;

    case bp_overlay_event:
      /* By analogy with the thread event, GDB should not stop for these. */
      FUNC8 ("Overlay Event Breakpoint: gdb should not stop!\n");
      return PRINT_NOTHING;
      break;

    case bp_catch_load:
      FUNC1 (bs->breakpoint_at->number);
      FUNC8 ("\nCatchpoint %d (", bs->breakpoint_at->number);
      FUNC8 ("loaded");
      FUNC8 (" %s), ", bs->breakpoint_at->triggered_dll_pathname);
      return PRINT_SRC_AND_LOC;
      break;

    case bp_catch_unload:
      FUNC1 (bs->breakpoint_at->number);
      FUNC8 ("\nCatchpoint %d (", bs->breakpoint_at->number);
      FUNC8 ("unloaded");
      FUNC8 (" %s), ", bs->breakpoint_at->triggered_dll_pathname);
      return PRINT_SRC_AND_LOC;
      break;

    case bp_catch_fork:
      FUNC1 (bs->breakpoint_at->number);
      FUNC8 ("\nCatchpoint %d (", bs->breakpoint_at->number);
      FUNC8 ("forked");
      FUNC8 (" process %d), ", 
		       bs->breakpoint_at->forked_inferior_pid);
      return PRINT_SRC_AND_LOC;
      break;

    case bp_catch_vfork:
      FUNC1 (bs->breakpoint_at->number);
      FUNC8 ("\nCatchpoint %d (", bs->breakpoint_at->number);
      FUNC8 ("vforked");
      FUNC8 (" process %d), ", 
		       bs->breakpoint_at->forked_inferior_pid);
      return PRINT_SRC_AND_LOC;
      break;

    case bp_catch_exec:
      FUNC1 (bs->breakpoint_at->number);
      FUNC8 ("\nCatchpoint %d (exec'd %s), ",
		       bs->breakpoint_at->number,
		       bs->breakpoint_at->exec_pathname);
      return PRINT_SRC_AND_LOC;
      break;

    case bp_catch_catch:
      if (current_exception_event && 
	  (CURRENT_EXCEPTION_KIND == EX_EVENT_CATCH))
	{
	  FUNC1 (bs->breakpoint_at->number);
	  FUNC8 ("\nCatchpoint %d (exception caught), ", 
			   bs->breakpoint_at->number);
	  FUNC8 ("throw location ");
	  if (CURRENT_EXCEPTION_THROW_PC && CURRENT_EXCEPTION_THROW_LINE)
	    FUNC8 ("%s:%d",
			     CURRENT_EXCEPTION_THROW_FILE,
			     CURRENT_EXCEPTION_THROW_LINE);
	  else
	    FUNC8 ("unknown");

	  FUNC8 (", catch location ");
	  if (CURRENT_EXCEPTION_CATCH_PC && CURRENT_EXCEPTION_CATCH_LINE)
	    FUNC8 ("%s:%d",
			     CURRENT_EXCEPTION_CATCH_FILE,
			     CURRENT_EXCEPTION_CATCH_LINE);
	  else
	    FUNC8 ("unknown");

	  FUNC8 ("\n");
	  /* don't bother to print location frame info */
	  return PRINT_SRC_ONLY;
	}
      else
	{
	  /* really throw, some other bpstat will handle it */
	  return PRINT_UNKNOWN;	
	}
      break;

    case bp_catch_throw:
      if (current_exception_event && 
	  (CURRENT_EXCEPTION_KIND == EX_EVENT_THROW))
	{
	  FUNC1 (bs->breakpoint_at->number);
	  FUNC8 ("\nCatchpoint %d (exception thrown), ",
			   bs->breakpoint_at->number);
	  FUNC8 ("throw location ");
	  if (CURRENT_EXCEPTION_THROW_PC && CURRENT_EXCEPTION_THROW_LINE)
	    FUNC8 ("%s:%d",
			     CURRENT_EXCEPTION_THROW_FILE,
			     CURRENT_EXCEPTION_THROW_LINE);
	  else
	    FUNC8 ("unknown");

	  FUNC8 (", catch location ");
	  if (CURRENT_EXCEPTION_CATCH_PC && CURRENT_EXCEPTION_CATCH_LINE)
	    FUNC8 ("%s:%d",
			     CURRENT_EXCEPTION_CATCH_FILE,
			     CURRENT_EXCEPTION_CATCH_LINE);
	  else
	    FUNC8 ("unknown");

	  FUNC8 ("\n");
	  /* don't bother to print location frame info */
	  return PRINT_SRC_ONLY; 
	}
      else
	{
	  /* really catch, some other bpstat will handle it */
	  return PRINT_UNKNOWN;	
	}
      break;

    case bp_watchpoint:
    case bp_hardware_watchpoint:
      if (bs->old_val != NULL)
	{
	  FUNC2 (bs->breakpoint_at->number);
	  if (FUNC12 (uiout))
	    FUNC11 (uiout, "reason", "watchpoint-trigger");
	  FUNC7 (bs->breakpoint_at);
	  ui_out_chain = FUNC6 (uiout, "value");
	  FUNC14 (uiout, "\nOld value = ");
	  FUNC16 (bs->old_val, stb->stream, 0, Val_pretty_default);
	  FUNC10 (uiout, "old", stb);
	  FUNC14 (uiout, "\nNew value = ");
	  FUNC16 (bs->breakpoint_at->val, stb->stream, 0, Val_pretty_default);
	  FUNC10 (uiout, "new", stb);
	  FUNC4 (ui_out_chain);
	  FUNC14 (uiout, "\n");
	  FUNC15 (bs->old_val);
	  bs->old_val = NULL;
	}
      /* More than one watchpoint may have been triggered.  */
      return PRINT_UNKNOWN;
      break;

    case bp_read_watchpoint:
      if (FUNC12 (uiout))
	FUNC11 (uiout, "reason", "read-watchpoint-trigger");
      FUNC7 (bs->breakpoint_at);
      ui_out_chain = FUNC6 (uiout, "value");
      FUNC14 (uiout, "\nValue = ");
      FUNC16 (bs->breakpoint_at->val, stb->stream, 0, Val_pretty_default);
      FUNC10 (uiout, "value", stb);
      FUNC4 (ui_out_chain);
      FUNC14 (uiout, "\n");
      return PRINT_UNKNOWN;
      break;

    case bp_access_watchpoint:
      if (bs->old_val != NULL)     
	{
	  FUNC2 (bs->breakpoint_at->number);
	  if (FUNC12 (uiout))
	    FUNC11 (uiout, "reason", "access-watchpoint-trigger");
	  FUNC7 (bs->breakpoint_at);
	  ui_out_chain = FUNC6 (uiout, "value");
	  FUNC14 (uiout, "\nOld value = ");
	  FUNC16 (bs->old_val, stb->stream, 0, Val_pretty_default);
	  FUNC10 (uiout, "old", stb);
	  FUNC15 (bs->old_val);
	  bs->old_val = NULL;
	  FUNC14 (uiout, "\nNew value = ");
	}
      else 
	{
	  FUNC7 (bs->breakpoint_at);
	  if (FUNC12 (uiout))
	    FUNC11 (uiout, "reason", "access-watchpoint-trigger");
	  ui_out_chain = FUNC6 (uiout, "value");
	  FUNC14 (uiout, "\nValue = ");
	}
      FUNC16 (bs->breakpoint_at->val, stb->stream, 0,Val_pretty_default);
      FUNC10 (uiout, "new", stb);
      FUNC4 (ui_out_chain);
      FUNC14 (uiout, "\n");
      return PRINT_UNKNOWN;
      break;

    /* Fall through, we don't deal with these types of breakpoints
       here. */

    case bp_finish:
      if (FUNC12 (uiout))
	FUNC11 (uiout, "reason", "function-finished");
      return PRINT_UNKNOWN;
      break;

    case bp_until:
      if (FUNC12 (uiout))
	FUNC11 (uiout, "reason", "location-reached");
      return PRINT_UNKNOWN;
      break;

    case bp_none:
    case bp_longjmp:
    case bp_longjmp_resume:
    case bp_step_resume:
    case bp_through_sigtramp:
    case bp_watchpoint_scope:
    case bp_call_dummy:
    default:
      return PRINT_UNKNOWN;
    }
}