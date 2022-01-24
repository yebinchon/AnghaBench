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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int reload_completed ; 
 int reload_in_progress ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (enum machine_mode mode, rtx operands[])
{
  rtx op0 = operands[0], op1 = operands[1];

  /* Force constants other than zero into memory.  We do not know how
     the instructions used to build constants modify the upper 64 bits
     of the register, once we have that information we may be able
     to handle some of them more efficiently.  */
  if ((reload_in_progress | reload_completed) == 0
      && FUNC7 (op0, mode)
      && FUNC0 (op1)
      && FUNC8 (op1) <= 0)
    op1 = FUNC9 (FUNC4 (mode, op1));

  /* Make operand1 a register if it isn't already.  */
  if (!no_new_pseudos
      && !FUNC7 (op0, mode)
      && !FUNC7 (op1, mode))
    {
      FUNC3 (op0, FUNC5 (FUNC1 (op0), op1));
      return;
    }

  FUNC2 (FUNC6 (VOIDmode, op0, op1));
}