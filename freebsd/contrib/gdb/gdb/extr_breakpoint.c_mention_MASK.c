#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct cleanup {int dummy; } ;
struct breakpoint {int type; char* dll_pathname; int /*<<< orphan*/  line_number; int /*<<< orphan*/ * source_file; TYPE_2__* loc; int /*<<< orphan*/  addr_string; scalar_t__ pending; int /*<<< orphan*/  number; int /*<<< orphan*/  exp; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* print_mention ) (struct breakpoint*) ;} ;

/* Variables and functions */
 scalar_t__ addressprint ; 
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct cleanup* FUNC3 (struct ui_stream*) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct ui_stream* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC14 (struct breakpoint *b)
{
  int say_where = 0;
  struct cleanup *old_chain, *ui_out_chain;
  struct ui_stream *stb;

  stb = FUNC12 (uiout);
  old_chain = FUNC3 (stb);

  /* FIXME: This is misplaced; mention() is called by things (like hitting a
     watchpoint) other than breakpoint creation.  It should be possible to
     clean this up and at the same time replace the random calls to
     breakpoint_changed with this hook, as has already been done for
     delete_breakpoint_hook and so on.  */
  if (&create_breakpoint_hook)
    FUNC1 (b);
  FUNC0 (b->number);

  if (b->ops != NULL && b->ops->print_mention != NULL)
    b->ops->print_mention (b);
  else
    switch (b->type)
      {
      case bp_none:
	FUNC7 ("(apparently deleted?) Eventpoint %d: ", b->number);
	break;
      case bp_watchpoint:
	FUNC13 (uiout, "Watchpoint ");
	ui_out_chain = FUNC4 (uiout, "wpt");
	FUNC9 (uiout, "number", b->number);
	FUNC13 (uiout, ": ");
	FUNC6 (b->exp, stb->stream);
	FUNC10 (uiout, "exp", stb);
	FUNC2 (ui_out_chain);
	break;
      case bp_hardware_watchpoint:
	FUNC13 (uiout, "Hardware watchpoint ");
	ui_out_chain = FUNC4 (uiout, "wpt");
	FUNC9 (uiout, "number", b->number);
	FUNC13 (uiout, ": ");
	FUNC6 (b->exp, stb->stream);
	FUNC10 (uiout, "exp", stb);
	FUNC2 (ui_out_chain);
	break;
      case bp_read_watchpoint:
	FUNC13 (uiout, "Hardware read watchpoint ");
	ui_out_chain = FUNC4 (uiout, "hw-rwpt");
	FUNC9 (uiout, "number", b->number);
	FUNC13 (uiout, ": ");
	FUNC6 (b->exp, stb->stream);
	FUNC10 (uiout, "exp", stb);
	FUNC2 (ui_out_chain);
	break;
      case bp_access_watchpoint:
	FUNC13 (uiout, "Hardware access (read/write) watchpoint ");
	ui_out_chain = FUNC4 (uiout, "hw-awpt");
	FUNC9 (uiout, "number", b->number);
	FUNC13 (uiout, ": ");
	FUNC6 (b->exp, stb->stream);
	FUNC10 (uiout, "exp", stb);
	FUNC2 (ui_out_chain);
	break;
      case bp_breakpoint:
	if (FUNC11 (uiout))
	  {
	    say_where = 0;
	    break;
	  }
	FUNC7 ("Breakpoint %d", b->number);
	say_where = 1;
	break;
      case bp_hardware_breakpoint:
	if (FUNC11 (uiout))
	  {
	    say_where = 0;
	    break;
	  }
	FUNC7 ("Hardware assisted breakpoint %d", b->number);
	say_where = 1;
	break;
      case bp_catch_load:
      case bp_catch_unload:
	FUNC7 ("Catchpoint %d (%s %s)",
			 b->number,
			 (b->type == bp_catch_load) ? "load" : "unload",
			 (b->dll_pathname != NULL) ? 
			 b->dll_pathname : "<any library>");
	break;
      case bp_catch_fork:
      case bp_catch_vfork:
	FUNC7 ("Catchpoint %d (%s)",
			 b->number,
			 (b->type == bp_catch_fork) ? "fork" : "vfork");
	break;
      case bp_catch_exec:
	FUNC7 ("Catchpoint %d (exec)",
			 b->number);
	break;
      case bp_catch_catch:
      case bp_catch_throw:
	FUNC7 ("Catchpoint %d (%s)",
			 b->number,
			 (b->type == bp_catch_catch) ? "catch" : "throw");
	break;

      case bp_until:
      case bp_finish:
      case bp_longjmp:
      case bp_longjmp_resume:
      case bp_step_resume:
      case bp_through_sigtramp:
      case bp_call_dummy:
      case bp_watchpoint_scope:
      case bp_shlib_event:
      case bp_thread_event:
      case bp_overlay_event:
	break;
      }

  if (say_where)
    {
      if (b->pending)
	{
	  FUNC7 (" (%s) pending.", b->addr_string);
	}
      else
	{
	  if (addressprint || b->source_file == NULL)
	    {
	      FUNC7 (" at ");
	      FUNC5 (b->loc->address, 1, gdb_stdout);
	    }
	  if (b->source_file)
	    FUNC7 (": file %s, line %d.",
			     b->source_file, b->line_number);
	}
    }
  FUNC2 (old_chain);
  if (FUNC11 (uiout))
    return;
  FUNC7 ("\n");
}