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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ PRE_MODIFY ; 
 unsigned int FUNC5 (unsigned int) ; 
 scalar_t__ STACK_PUSH_CODE ; 
 int VOIDmode ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ stack_pointer_rtx ; 

int
FUNC7 (rtx op, enum machine_mode mode)
{
  unsigned int rounded_size = FUNC2 (mode);

#ifdef PUSH_ROUNDING
  rounded_size = PUSH_ROUNDING (rounded_size);
#endif

  if (!FUNC4 (op))
    return 0;

  if (mode != VOIDmode && FUNC1 (op) != mode)
    return 0;

  op = FUNC6 (op, 0);

  if (rounded_size == FUNC2 (mode))
    {
      if (FUNC0 (op) != STACK_PUSH_CODE)
	return 0;
    }
  else
    {
      if (FUNC0 (op) != PRE_MODIFY
	  || FUNC0 (FUNC6 (op, 1)) != PLUS
	  || FUNC6 (FUNC6 (op, 1), 0) != FUNC6 (op, 0)
	  || FUNC0 (FUNC6 (FUNC6 (op, 1), 1)) != CONST_INT
#ifdef STACK_GROWS_DOWNWARD
	  || INTVAL (XEXP (XEXP (op, 1), 1)) != - (int) rounded_size
#else
	  || FUNC3 (FUNC6 (FUNC6 (op, 1), 1)) != (int) rounded_size
#endif
	  )
	return 0;
    }

  return FUNC6 (op, 0) == stack_pointer_rtx;
}