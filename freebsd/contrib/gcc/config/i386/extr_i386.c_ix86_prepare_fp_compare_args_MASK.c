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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int CCFPUmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FLOAT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ TARGET_CMOVE ; 
 scalar_t__ TARGET_SSE_MATH ; 
 int XFmode ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum rtx_code
FUNC12 (enum rtx_code code, rtx *pop0, rtx *pop1)
{
  enum machine_mode fpcmp_mode = FUNC6 (code);
  rtx op0 = *pop0, op1 = *pop1;
  enum machine_mode op_mode = FUNC2 (op0);
  int is_sse = TARGET_SSE_MATH && FUNC3 (op_mode);

  /* All of the unordered compare instructions only work on registers.
     The same is true of the fcomi compare instructions.  The XFmode
     compare instructions require registers except when comparing
     against zero or when converting operand 1 from fixed point to
     floating point.  */

  if (!is_sse
      && (fpcmp_mode == CCFPUmode
	  || (op_mode == XFmode
	      && ! (FUNC9 (op0) == 1
		    || FUNC9 (op1) == 1)
	      && FUNC1 (op1) != FLOAT)
	  || FUNC8 (code)))
    {
      op0 = FUNC5 (op_mode, op0);
      op1 = FUNC5 (op_mode, op1);
    }
  else
    {
      /* %%% We only allow op1 in memory; op0 must be st(0).  So swap
	 things around if they appear profitable, otherwise force op0
	 into a register.  */

      if (FUNC9 (op0) == 0
	  || (FUNC1 (op0) == MEM
	      && ! (FUNC9 (op1) == 0
		    || FUNC1 (op1) == MEM)))
	{
	  rtx tmp;
	  tmp = op0, op0 = op1, op1 = tmp;
	  code = FUNC10 (code);
	}

      if (FUNC1 (op0) != REG)
	op0 = FUNC5 (op_mode, op0);

      if (FUNC0 (op1))
	{
	  int tmp = FUNC9 (op1);
	  if (tmp == 0)
	    op1 = FUNC11 (FUNC4 (op_mode, op1));
	  else if (tmp == 1)
	    {
	      if (TARGET_CMOVE)
		op1 = FUNC5 (op_mode, op1);
	    }
	  else
	    op1 = FUNC5 (op_mode, op1);
	}
    }

  /* Try to rearrange the comparison to make it cheaper.  */
  if (FUNC7 (code)
      > FUNC7 (FUNC10 (code))
      && (FUNC1 (op1) == REG || !no_new_pseudos))
    {
      rtx tmp;
      tmp = op0, op0 = op1, op1 = tmp;
      code = FUNC10 (code);
      if (FUNC1 (op0) != REG)
	op0 = FUNC5 (op_mode, op0);
    }

  *pop0 = op0;
  *pop1 = op1;
  return code;
}