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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arg_pointer_rtx ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 int /*<<< orphan*/  virtual_incoming_args_rtx ; 
 int /*<<< orphan*/  virtual_outgoing_args_rtx ; 
 int /*<<< orphan*/  virtual_stack_dynamic_rtx ; 
 int /*<<< orphan*/  virtual_stack_vars_rtx ; 

int
FUNC4 (rtx op)
{
  /* Reject eliminable registers.  */
  if (! (reload_in_progress || reload_completed)
      && (   FUNC3 (frame_pointer_rtx, op)
	  || FUNC3 (arg_pointer_rtx, op)
	  || FUNC3 (virtual_incoming_args_rtx, op)
	  || FUNC3 (virtual_outgoing_args_rtx, op)
	  || FUNC3 (virtual_stack_dynamic_rtx, op)
	  || FUNC3 (virtual_stack_vars_rtx, op)))
    return 0;

  if (FUNC0 (op) == MEM)
    {
      rtx ind;

      ind = FUNC2 (op, 0);

      /* Match: (mem (reg)).  */
      if (FUNC0 (ind) == REG)
	return 1;

      /* Match:
	 (mem (plus (reg)
	            (const))).  */
      if (FUNC0 (ind) == PLUS
	  && FUNC0 (FUNC2 (ind, 0)) == REG
	  && FUNC1 (FUNC2 (ind, 0), VOIDmode)
	  && FUNC0 (FUNC2 (ind, 1)) == CONST_INT)
	return 1;
    }

  return 0;
}