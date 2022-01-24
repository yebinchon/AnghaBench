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
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MODE_FLOAT ; 
 scalar_t__ PLUS ; 
 scalar_t__ POST_INC ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ STACK_POINTER_REGNUM ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ arg_pointer_rtx ; 
 scalar_t__ flag_pic ; 
 scalar_t__ frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 scalar_t__ FUNC14 (int,int) ; 
 scalar_t__ virtual_incoming_args_rtx ; 
 scalar_t__ virtual_outgoing_args_rtx ; 
 scalar_t__ virtual_stack_dynamic_rtx ; 
 scalar_t__ virtual_stack_vars_rtx ; 

int
FUNC15 (enum machine_mode mode, rtx x, int strict_p)
{
  /* ??? Not clear if this is right.  Experiment.  */
  if (FUNC4 (mode) < 4
      && !(reload_in_progress || reload_completed)
      && (FUNC10 (frame_pointer_rtx, x)
	  || FUNC10 (arg_pointer_rtx, x)
	  || FUNC10 (virtual_incoming_args_rtx, x)
	  || FUNC10 (virtual_outgoing_args_rtx, x)
	  || FUNC10 (virtual_stack_dynamic_rtx, x)
	  || FUNC10 (virtual_stack_vars_rtx, x)))
    return 0;

  /* Accept any base register.  SP only in SImode or larger.  */
  else if (FUNC12 (x, mode, strict_p))
    return 1;

  /* This is PC relative data before arm_reorg runs.  */
  else if (FUNC4 (mode) >= 4 && FUNC0 (x)
	   && FUNC2 (x) == SYMBOL_REF
           && FUNC1 (x) && !flag_pic)
    return 1;

  /* This is PC relative data after arm_reorg runs.  */
  else if (FUNC4 (mode) >= 4 && reload_completed
	   && (FUNC2 (x) == LABEL_REF
	       || (FUNC2 (x) == CONST
		   && FUNC2 (FUNC7 (x, 0)) == PLUS
		   && FUNC2 (FUNC7 (FUNC7 (x, 0), 0)) == LABEL_REF
		   && FUNC2 (FUNC7 (FUNC7 (x, 0), 1)) == CONST_INT)))
    return 1;

  /* Post-inc indexing only supported for SImode and larger.  */
  else if (FUNC2 (x) == POST_INC && FUNC4 (mode) >= 4
	   && FUNC13 (FUNC7 (x, 0), strict_p))
    return 1;

  else if (FUNC2 (x) == PLUS)
    {
      /* REG+REG address can be any two index registers.  */
      /* We disallow FRAME+REG addressing since we know that FRAME
	 will be replaced with STACK, and SP relative addressing only
	 permits SP+OFFSET.  */
      if (FUNC4 (mode) <= 4
	  && FUNC7 (x, 0) != frame_pointer_rtx
	  && FUNC7 (x, 1) != frame_pointer_rtx
	  && FUNC13 (FUNC7 (x, 0), strict_p)
	  && FUNC13 (FUNC7 (x, 1), strict_p))
	return 1;

      /* REG+const has 5-7 bit offset for non-SP registers.  */
      else if ((FUNC13 (FUNC7 (x, 0), strict_p)
		|| FUNC7 (x, 0) == arg_pointer_rtx)
	       && FUNC2 (FUNC7 (x, 1)) == CONST_INT
	       && FUNC14 (mode, FUNC5 (FUNC7 (x, 1))))
	return 1;

      /* REG+const has 10 bit offset for SP, but only SImode and
	 larger is supported.  */
      /* ??? Should probably check for DI/DFmode overflow here
	 just like GO_IF_LEGITIMATE_OFFSET does.  */
      else if (FUNC2 (FUNC7 (x, 0)) == REG
	       && FUNC6 (FUNC7 (x, 0)) == STACK_POINTER_REGNUM
	       && FUNC4 (mode) >= 4
	       && FUNC2 (FUNC7 (x, 1)) == CONST_INT
	       && FUNC5 (FUNC7 (x, 1)) >= 0
	       && FUNC5 (FUNC7 (x, 1)) + FUNC4 (mode) <= 1024
	       && (FUNC5 (FUNC7 (x, 1)) & 3) == 0)
	return 1;

      else if (FUNC2 (FUNC7 (x, 0)) == REG
	       && FUNC6 (FUNC7 (x, 0)) == FRAME_POINTER_REGNUM
	       && FUNC4 (mode) >= 4
	       && FUNC2 (FUNC7 (x, 1)) == CONST_INT
	       && (FUNC5 (FUNC7 (x, 1)) & 3) == 0)
	return 1;
    }

  else if (FUNC3 (mode) != MODE_FLOAT
	   && FUNC4 (mode) == 4
	   && FUNC2 (x) == SYMBOL_REF
	   && FUNC1 (x)
	   && ! (flag_pic
		 && FUNC11 (FUNC8 (x))
		 && ! FUNC9 (FUNC8 (x))))
    return 1;

  return 0;
}