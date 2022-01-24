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
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct breakpoint {scalar_t__ type; scalar_t__ enable_state; int disposition; int /*<<< orphan*/  number; int /*<<< orphan*/  val; int /*<<< orphan*/  exp; int /*<<< orphan*/  watchpoint_frame; int /*<<< orphan*/ * exp_valid_block; scalar_t__ pending; } ;
typedef  enum bpdisp { ____Placeholder_bpdisp } bpdisp ;

/* Variables and functions */
 scalar_t__ GDB_RC_OK ; 
 int FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bp_access_watchpoint ; 
 void* bp_disabled ; 
 scalar_t__ bp_enabled ; 
 scalar_t__ bp_hardware_breakpoint ; 
 scalar_t__ bp_hardware_watchpoint ; 
 scalar_t__ bp_permanent ; 
 scalar_t__ bp_read_watchpoint ; 
 scalar_t__ bp_watchpoint ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC6 (struct breakpoint*) ; 
 struct frame_info* deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct frame_info* fr ; 
 struct frame_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct frame_info*) ; 
 int FUNC11 () ; 
 int FUNC12 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC17 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct value*) ; 
 struct value* FUNC21 () ; 

__attribute__((used)) static void
FUNC22 (struct breakpoint *bpt, enum bpdisp disposition)
{
  struct frame_info *save_selected_frame = NULL;
  int save_selected_frame_level = -1;
  int target_resources_ok, other_type_used;
  struct value *mark;

  if (bpt->type == bp_hardware_breakpoint)
    {
      int i;
      i = FUNC11 ();
      target_resources_ok = 
	FUNC0 (bp_hardware_breakpoint, 
					    i + 1, 0);
      if (target_resources_ok == 0)
	FUNC7 ("No hardware breakpoint support in the target.");
      else if (target_resources_ok < 0)
	FUNC7 ("Hardware breakpoints used exceeds limit.");
    }

  if (bpt->pending)
    {
      if (bpt->enable_state != bp_enabled)
	{
	  /* When enabling a pending breakpoint, we need to check if the breakpoint
	     is resolvable since shared libraries could have been loaded
	     after the breakpoint was disabled.  */
	  FUNC3 ();
 	  if (FUNC16 (bpt) == GDB_RC_OK)
	    {
	      FUNC6 (bpt);
	      return;
	    }
	  bpt->enable_state = bp_enabled;
	  bpt->disposition = disposition;
	}
    }
  else  /* Not a pending breakpoint.  */
    {
      if (bpt->enable_state != bp_permanent)
	bpt->enable_state = bp_enabled;
      bpt->disposition = disposition;
      FUNC5 (bpt);
      FUNC3 ();
      
      if (bpt->type == bp_watchpoint || 
	  bpt->type == bp_hardware_watchpoint ||
	  bpt->type == bp_read_watchpoint || 
	  bpt->type == bp_access_watchpoint)
	{
	  if (bpt->exp_valid_block != NULL)
	    {
	      struct frame_info *fr =
		fr = FUNC9 (bpt->watchpoint_frame);
	      if (fr == NULL)
		{
		  FUNC14 ("\
Cannot enable watchpoint %d because the block in which its expression\n\
is valid is not currently in scope.\n", bpt->number);
		  bpt->enable_state = bp_disabled;
		  return;
		}
	      
	      save_selected_frame = deprecated_selected_frame;
	      save_selected_frame_level = FUNC10 (deprecated_selected_frame);
	      FUNC17 (fr);
	    }
	  
	  FUNC19 (bpt->val);
	  mark = FUNC21 ();
	  bpt->val = FUNC8 (bpt->exp);
	  FUNC15 (bpt->val);
	  if (FUNC1 (bpt->val))
	    FUNC18 (bpt->val);
	  
	  if (bpt->type == bp_hardware_watchpoint ||
	      bpt->type == bp_read_watchpoint ||
	      bpt->type == bp_access_watchpoint)
	    {
	      int i = FUNC12 (bpt->type, &other_type_used);
	      int mem_cnt = FUNC4 (bpt->val);
	      
	      /* Hack around 'unused var' error for some targets here */
	      (void) mem_cnt, i;
	      target_resources_ok = FUNC0 (
									bpt->type, i + mem_cnt, other_type_used);
	      /* we can consider of type is bp_hardware_watchpoint, convert to 
		 bp_watchpoint in the following condition */
	      if (target_resources_ok < 0)
		{
		  FUNC14 ("\
Cannot enable watchpoint %d because target watch resources\n\
have been allocated for other watchpoints.\n", bpt->number);
		  bpt->enable_state = bp_disabled;
		  FUNC20 (mark);
		  return;
		}
	    }
	  
	  if (save_selected_frame_level >= 0)
	    FUNC17 (save_selected_frame);
	  FUNC20 (mark);
	}
    }

  if (&modify_breakpoint_hook)
    FUNC13 (bpt);
  FUNC2 (bpt->number);
}