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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int /*<<< orphan*/  CCmode ; 
 int EQ ; 
 int /*<<< orphan*/  FPSW_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISA_HAS_8CC ; 
 scalar_t__ MODE_INT ; 
 int NE ; 
 scalar_t__* cmp_operands ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (enum rtx_code *code, rtx *op0, rtx *op1, bool need_eq_ne_p)
{
  if (FUNC1 (FUNC0 (cmp_operands[0])) == MODE_INT)
    {
      if (!need_eq_ne_p && cmp_operands[1] == const0_rtx)
	{
	  *op0 = cmp_operands[0];
	  *op1 = cmp_operands[1];
	}
      else if (*code == EQ || *code == NE)
	{
	  if (need_eq_ne_p)
	    {
	      *op0 = FUNC8 (cmp_operands[0], cmp_operands[1]);
	      *op1 = const0_rtx;
	    }
	  else
	    {
	      *op0 = cmp_operands[0];
	      *op1 = FUNC2 (FUNC0 (*op0), cmp_operands[1]);
	    }
	}
      else
	{
	  /* The comparison needs a separate scc instruction.  Store the
	     result of the scc in *OP0 and compare it against zero.  */
	  bool invert = false;
	  *op0 = FUNC3 (FUNC0 (cmp_operands[0]));
	  *op1 = const0_rtx;
	  FUNC6 (*code, &invert, *op0,
				    cmp_operands[0], cmp_operands[1]);
	  *code = (invert ? EQ : NE);
	}
    }
  else
    {
      enum rtx_code cmp_code;

      /* Floating-point tests use a separate c.cond.fmt comparison to
	 set a condition code register.  The branch or conditional move
	 will then compare that register against zero.

	 Set CMP_CODE to the code of the comparison instruction and
	 *CODE to the code that the branch or move should use.  */
      cmp_code = *code;
      *code = FUNC7 (&cmp_code) ? EQ : NE;
      *op0 = (ISA_HAS_8CC
	      ? FUNC3 (CCmode)
	      : FUNC4 (CCmode, FPSW_REGNUM));
      *op1 = const0_rtx;
      FUNC5 (cmp_code, *op0, cmp_operands[0], cmp_operands[1]);
    }
}