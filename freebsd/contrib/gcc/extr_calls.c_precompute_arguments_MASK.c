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
struct arg_data {int mode; int /*<<< orphan*/  unsignedp; int /*<<< orphan*/  initial_value; int /*<<< orphan*/  value; int /*<<< orphan*/  tree_value; } ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ACCUMULATE_OUTGOING_ARGS ; 
 scalar_t__ CALL_EXPR ; 
 int ECF_LIBCALL_BLOCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (int flags, int num_actuals, struct arg_data *args)
{
  int i;

  /* If this is a libcall, then precompute all arguments so that we do not
     get extraneous instructions emitted as part of the libcall sequence.  */

  /* If we preallocated the stack space, and some arguments must be passed
     on the stack, then we must precompute any parameter which contains a
     function call which will store arguments on the stack.
     Otherwise, evaluating the parameter may clobber previous parameters
     which have already been stored into the stack.  (we have code to avoid
     such case by saving the outgoing stack arguments, but it results in
     worse code)  */
  if ((flags & ECF_LIBCALL_BLOCK) == 0 && !ACCUMULATE_OUTGOING_ARGS)
    return;

  for (i = 0; i < num_actuals; i++)
    {
      enum machine_mode mode;

      if ((flags & ECF_LIBCALL_BLOCK) == 0
	  && FUNC5 (args[i].tree_value) != CALL_EXPR)
	continue;

      /* If this is an addressable type, we cannot pre-evaluate it.  */
      FUNC10 (!FUNC4 (FUNC6 (args[i].tree_value)));

      args[i].initial_value = args[i].value
	= FUNC9 (args[i].tree_value);

      mode = FUNC7 (FUNC6 (args[i].tree_value));
      if (mode != args[i].mode)
	{
	  args[i].value
	    = FUNC8 (args[i].mode, mode,
			     args[i].value, args[i].unsignedp);
#if defined(PROMOTE_FUNCTION_MODE) && !defined(PROMOTE_MODE)
	  /* CSE will replace this only if it contains args[i].value
	     pseudo, so convert it down to the declared mode using
	     a SUBREG.  */
	  if (REG_P (args[i].value)
	      && GET_MODE_CLASS (args[i].mode) == MODE_INT)
	    {
	      args[i].initial_value
		= gen_lowpart_SUBREG (mode, args[i].value);
	      SUBREG_PROMOTED_VAR_P (args[i].initial_value) = 1;
	      SUBREG_PROMOTED_UNSIGNED_SET (args[i].initial_value,
					    args[i].unsignedp);
	    }
#endif
	}
    }
}