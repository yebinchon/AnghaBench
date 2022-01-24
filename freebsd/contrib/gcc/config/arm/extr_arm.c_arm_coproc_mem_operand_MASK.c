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
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MEM ; 
 scalar_t__ PLUS ; 
 scalar_t__ POST_DEC ; 
 scalar_t__ POST_INC ; 
 scalar_t__ POST_MODIFY ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_INC ; 
 scalar_t__ PRE_MODIFY ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arg_pointer_rtx ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtual_incoming_args_rtx ; 
 int /*<<< orphan*/  virtual_outgoing_args_rtx ; 
 int /*<<< orphan*/  virtual_stack_dynamic_rtx ; 
 int /*<<< orphan*/  virtual_stack_vars_rtx ; 

int
FUNC7 (rtx op, bool wb)
{
  rtx ind;

  /* Reject eliminable registers.  */
  if (! (reload_in_progress || reload_completed)
      && (   FUNC5 (frame_pointer_rtx, op)
	  || FUNC5 (arg_pointer_rtx, op)
	  || FUNC5 (virtual_incoming_args_rtx, op)
	  || FUNC5 (virtual_outgoing_args_rtx, op)
	  || FUNC5 (virtual_stack_dynamic_rtx, op)
	  || FUNC5 (virtual_stack_vars_rtx, op)))
    return FALSE;

  /* Constants are converted into offsets from labels.  */
  if (FUNC0 (op) != MEM)
    return FALSE;

  ind = FUNC3 (op, 0);

  if (reload_completed
      && (FUNC0 (ind) == LABEL_REF
	  || (FUNC0 (ind) == CONST
	      && FUNC0 (FUNC3 (ind, 0)) == PLUS
	      && FUNC0 (FUNC3 (FUNC3 (ind, 0), 0)) == LABEL_REF
	      && FUNC0 (FUNC3 (FUNC3 (ind, 0), 1)) == CONST_INT)))
    return TRUE;

  /* Match: (mem (reg)).  */
  if (FUNC0 (ind) == REG)
    return FUNC4 (ind, 0);

  /* Autoincremment addressing modes.  */
  if (wb
      && (FUNC0 (ind) == PRE_INC
	  || FUNC0 (ind) == POST_INC
	  || FUNC0 (ind) == PRE_DEC
	  || FUNC0 (ind) == POST_DEC))
    return FUNC4 (FUNC3 (ind, 0), 0);

  if (wb
      && (FUNC0 (ind) == POST_MODIFY || FUNC0 (ind) == PRE_MODIFY)
      && FUNC4 (FUNC3 (ind, 0), 0)
      && FUNC0 (FUNC3 (ind, 1)) == PLUS
      && FUNC6 (FUNC3 (FUNC3 (ind, 1), 0), FUNC3 (ind, 0)))
    ind = FUNC3 (ind, 1);

  /* Match:
     (plus (reg)
	   (const)).  */
  if (FUNC0 (ind) == PLUS
      && FUNC0 (FUNC3 (ind, 0)) == REG
      && FUNC2 (FUNC3 (ind, 0), VOIDmode)
      && FUNC0 (FUNC3 (ind, 1)) == CONST_INT
      && FUNC1 (FUNC3 (ind, 1)) > -1024
      && FUNC1 (FUNC3 (ind, 1)) <  1024
      && (FUNC1 (FUNC3 (ind, 1)) & 3) == 0)
    return TRUE;

  return FALSE;
}