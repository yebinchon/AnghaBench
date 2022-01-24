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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOBBER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  regs_invalidated_by_call ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10 (rtx reg, rtx insn)
{
  /* We can be passed an insn or part of one.  If we are passed an insn,
     check if a side-effect of the insn clobbers REG.  */
  if (FUNC3 (insn)
      && (FUNC1 (insn, reg)
	  || (FUNC0 (insn)
	      && ((FUNC6 (reg)
		   && FUNC5 (reg) < FIRST_PSEUDO_REGISTER
		   && FUNC8 (regs_invalidated_by_call,
					       FUNC2 (reg), FUNC5 (reg)))
		  || FUNC4 (reg)
		  || FUNC7 (insn, CLOBBER, reg)))))
    return 1;

  return FUNC9 (reg, insn) != NULL_RTX;
}