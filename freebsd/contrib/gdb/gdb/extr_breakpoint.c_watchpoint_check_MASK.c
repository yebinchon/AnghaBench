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
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct breakpoint {void* disposition; TYPE_1__* related_breakpoint; int /*<<< orphan*/  number; struct value* val; int /*<<< orphan*/  exp; int /*<<< orphan*/  watchpoint_frame; int /*<<< orphan*/ * exp_valid_block; } ;
typedef  TYPE_2__* bpstat ;
struct TYPE_4__ {struct breakpoint* breakpoint_at; struct value* old_val; } ;
struct TYPE_3__ {void* disposition; } ;

/* Variables and functions */
 int WP_DELETED ; 
 int WP_VALUE_CHANGED ; 
 int WP_VALUE_NOT_CHANGED ; 
 int /*<<< orphan*/  current_gdbarch ; 
 void* disp_del_at_next_stop ; 
 struct value* FUNC0 (int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC12 (struct value*,struct value*) ; 
 int /*<<< orphan*/  FUNC13 (struct value*) ; 
 struct value* FUNC14 () ; 

__attribute__((used)) static int
FUNC15 (void *p)
{
  bpstat bs = (bpstat) p;
  struct breakpoint *b;
  struct frame_info *fr;
  int within_current_scope;

  b = bs->breakpoint_at;

  if (b->exp_valid_block == NULL)
    within_current_scope = 1;
  else
    {
      /* There is no current frame at this moment.  If we're going to have
         any chance of handling watchpoints on local variables, we'll need
         the frame chain (so we can determine if we're in scope).  */
      FUNC5 ();
      fr = FUNC1 (b->watchpoint_frame);
      within_current_scope = (fr != NULL);
      /* in_function_epilogue_p() returns a non-zero value if we're still
	 in the function but the stack frame has already been invalidated.
	 Since we can't rely on the values of local variables after the
	 stack has been destroyed, we are treating the watchpoint in that
	 state as `not changed' without further checking.
	 
	 vinschen/2003-09-04: The former implementation left out the case
	 that the watchpoint frame couldn't be found by frame_find_by_id()
	 because the current PC is currently in an epilogue.  Calling
	 gdbarch_in_function_epilogue_p() also when fr == NULL fixes that. */
      if ((!within_current_scope || fr == FUNC3 ())
          && FUNC2 (current_gdbarch, FUNC4 ()))
	return WP_VALUE_NOT_CHANGED;
      if (fr && within_current_scope)
	/* If we end up stopping, the current frame will get selected
	   in normal_stop.  So this call to select_frame won't affect
	   the user.  */
	FUNC7 (fr);
    }

  if (within_current_scope)
    {
      /* We use value_{,free_to_}mark because it could be a
         *long* time before we return to the command level and
         call free_all_values.  We can't call free_all_values because
         we might be in the middle of evaluating a function call.  */

      struct value *mark = FUNC14 ();
      struct value *new_val = FUNC0 (bs->breakpoint_at->exp);
      if (!FUNC12 (b->val, new_val))
	{
	  FUNC6 (new_val);
	  FUNC13 (mark);
	  bs->old_val = b->val;
	  b->val = new_val;
	  /* We will stop here */
	  return WP_VALUE_CHANGED;
	}
      else
	{
	  /* Nothing changed, don't do anything.  */
	  FUNC13 (mark);
	  /* We won't stop here */
	  return WP_VALUE_NOT_CHANGED;
	}
    }
  else
    {
      /* This seems like the only logical thing to do because
         if we temporarily ignored the watchpoint, then when
         we reenter the block in which it is valid it contains
         garbage (in the case of a function, it may have two
         garbage values, one before and one after the prologue).
         So we can't even detect the first assignment to it and
         watch after that (since the garbage may or may not equal
         the first value assigned).  */
      /* We print all the stop information in print_it_typical(), but
	 in this case, by the time we call print_it_typical() this bp
	 will be deleted already. So we have no choice but print the
	 information here. */
      if (FUNC10 (uiout))
	FUNC9 (uiout, "reason", "watchpoint-scope");
      FUNC11 (uiout, "\nWatchpoint ");
      FUNC8 (uiout, "wpnum", bs->breakpoint_at->number);
      FUNC11 (uiout, " deleted because the program has left the block in\n\
which its expression is valid.\n");     

      if (b->related_breakpoint)
	b->related_breakpoint->disposition = disp_del_at_next_stop;
      b->disposition = disp_del_at_next_stop;

      return WP_DELETED;
    }
}