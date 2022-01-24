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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COND_EXEC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int MINUS ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int SET ; 
 int /*<<< orphan*/  after_arm_reorg ; 
 int arm_constant_limit ; 
 int FUNC5 (int,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int,scalar_t__,scalar_t__) ; 

int
FUNC10 (enum rtx_code code, enum machine_mode mode, rtx insn,
		    HOST_WIDE_INT val, rtx target, rtx source, int subtargets)
{
  rtx cond;

  if (insn && FUNC2 (FUNC3 (insn)) == COND_EXEC)
    cond = FUNC0 (FUNC3 (insn));
  else
    cond = NULL_RTX;

  if (subtargets || code == SET
      || (FUNC2 (target) == REG && FUNC2 (source) == REG
	  && FUNC4 (target) != FUNC4 (source)))
    {
      /* After arm_reorg has been called, we can't fix up expensive
	 constants by pushing them into memory so we must synthesize
	 them in-line, regardless of the cost.  This is only likely to
	 be more costly on chips that have load delay slots and we are
	 compiling without running the scheduler (so no splitting
	 occurred before the final instruction emission).

	 Ref: gcc -O1 -mcpu=strongarm gcc.c-torture/compile/980506-2.c
      */
      if (!after_arm_reorg
	  && !cond
	  && (FUNC5 (code, mode, NULL_RTX, val, target, source,
				1, 0)
	      > arm_constant_limit + (code != SET)))
	{
	  if (code == SET)
	    {
	      /* Currently SET is the only monadic value for CODE, all
		 the rest are diadic.  */
	      FUNC6 (target, FUNC1 (val));
	      return 1;
	    }
	  else
	    {
	      rtx temp = subtargets ? FUNC7 (mode) : target;

	      FUNC6 (temp, FUNC1 (val));
	      /* For MINUS, the value is subtracted from, since we never
		 have subtraction of a constant.  */
	      if (code == MINUS)
		FUNC6 (target, FUNC8 (mode, temp, source));
	      else
		FUNC6 (target,
			       FUNC9 (code, mode, source, temp));
	      return 2;
	    }
	}
    }

  return FUNC5 (code, mode, cond, val, target, source, subtargets,
			   1);
}