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
typedef  int /*<<< orphan*/  regset ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__*,scalar_t__ (*) (scalar_t__*,int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mark_altered ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regs_invalidated_by_call ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static void
FUNC15 (rtx insn, rtx *expr, regset altered)
{
  rtx set = FUNC14 (insn);
  rtx lhs = NULL_RTX, rhs;
  bool ret = false;

  if (set)
    {
      lhs = FUNC3 (set);
      if (!FUNC2 (lhs)
	  || FUNC8 (&lhs, altered))
	ret = true;
    }
  else
    ret = true;

  FUNC11 (FUNC1 (insn), mark_altered, altered);
  if (FUNC0 (insn))
    {
      int i;

      /* Kill all call clobbered registers.  */
      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
	if (FUNC6 (regs_invalidated_by_call, i))
	  FUNC4 (altered, i);
    }

  if (ret)
    return;

  rhs = FUNC9 (insn);
  if (rhs)
    rhs = FUNC7 (rhs, 0);
  else
    rhs = FUNC5 (set);

  if (!FUNC12 (rhs))
    return;

  if (FUNC10 (&rhs, altered_reg_used, altered))
    return;

  *expr = FUNC13 (*expr, lhs, rhs);
}