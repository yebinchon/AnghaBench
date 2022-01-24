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
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int all_throwers_are_sibcalls; } ;
typedef  int TREE_NOTHROW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 TYPE_1__* cfun ; 
 int current_function_decl ; 
 scalar_t__ current_function_epilogue_delay_list ; 
 int /*<<< orphan*/  flag_exceptions ; 
 scalar_t__ FUNC6 () ; 

unsigned int
FUNC7 (void)
{
  rtx insn;

  /* If we don't know that this implementation of the function will
     actually be used, then we must not set TREE_NOTHROW, since
     callers must not assume that this function does not throw.  */
  if (FUNC1 (current_function_decl))
    return 0;

  TREE_NOTHROW (current_function_decl) = 1;

  /* Assume cfun->all_throwers_are_sibcalls until we encounter
     something that can throw an exception.  We specifically exempt
     CALL_INSNs that are SIBLING_CALL_P, as these are really jumps,
     and can't throw.  Most CALL_INSNs are not SIBLING_CALL_P, so this
     is optimistic.  */

  cfun->all_throwers_are_sibcalls = 1;

  if (! flag_exceptions)
    return 0;

  for (insn = FUNC6 (); insn; insn = FUNC2 (insn))
    if (FUNC5 (insn))
      {
        TREE_NOTHROW (current_function_decl) = 0;

	if (!FUNC0 (insn) || !FUNC3 (insn))
	  {
	    cfun->all_throwers_are_sibcalls = 0;
	    return 0;
	  }
      }

  for (insn = current_function_epilogue_delay_list; insn;
       insn = FUNC4 (insn, 1))
    if (FUNC5 (insn))
      {
        TREE_NOTHROW (current_function_decl) = 0;

	if (!FUNC0 (insn) || !FUNC3 (insn))
	  {
	    cfun->all_throwers_are_sibcalls = 0;
	    return 0;
	  }
      }
  return 0;
}