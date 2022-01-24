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
typedef  enum attr_cirrus { ____Placeholder_attr_cirrus } attr_cirrus ;

/* Variables and functions */
 int CIRRUS_COMPARE ; 
 scalar_t__ CIRRUS_DOUBLE ; 
 scalar_t__ CIRRUS_MOVE ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FLOAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INSN ; 
 scalar_t__ JUMP_INSN ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RETURN ; 
 scalar_t__ SET ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (rtx first)
{
  enum attr_cirrus attr;
  rtx body = FUNC1 (first);
  rtx t;
  int nops;

  /* Any branch must be followed by 2 non Cirrus instructions.  */
  if (FUNC0 (first) == JUMP_INSN && FUNC0 (body) != RETURN)
    {
      nops = 0;
      t = FUNC12 (first);

      if (FUNC6 (t))
	++ nops;

      if (FUNC6 (FUNC12 (t)))
	++ nops;

      while (nops --)
	FUNC8 (FUNC10 (), first);

      return;
    }

  /* (float (blah)) is in parallel with a clobber.  */
  if (FUNC0 (body) == PARALLEL && FUNC5 (body, 0) > 0)
    body = FUNC4 (body, 0, 0);

  if (FUNC0 (body) == SET)
    {
      rtx lhs = FUNC3 (body, 0), rhs = FUNC3 (body, 1);

      /* cfldrd, cfldr64, cfstrd, cfstr64 must
	 be followed by a non Cirrus insn.  */
      if (FUNC11 (first) == CIRRUS_DOUBLE)
	{
	  if (FUNC6 (FUNC12 (first)))
	    FUNC8 (FUNC10 (), first);

	  return;
	}
      else if (FUNC7 (first))
	{
	  unsigned int arm_regno;

	  /* Any ldr/cfmvdlr, ldr/cfmvdhr, ldr/cfmvsr, ldr/cfmv64lr,
	     ldr/cfmv64hr combination where the Rd field is the same
	     in both instructions must be split with a non Cirrus
	     insn.  Example:

	     ldr r0, blah
	     nop
	     cfmvsr mvf0, r0.  */

	  /* Get Arm register number for ldr insn.  */
	  if (FUNC0 (lhs) == REG)
	    arm_regno = FUNC2 (lhs);
	  else
	    {
	      FUNC9 (FUNC0 (rhs) == REG);
	      arm_regno = FUNC2 (rhs);
	    }

	  /* Next insn.  */
	  first = FUNC12 (first);

	  if (! FUNC6 (first))
	    return;

	  body = FUNC1 (first);

          /* (float (blah)) is in parallel with a clobber.  */
          if (FUNC0 (body) == PARALLEL && FUNC5 (body, 0))
	    body = FUNC4 (body, 0, 0);

	  if (FUNC0 (body) == FLOAT)
	    body = FUNC3 (body, 0);

	  if (FUNC11 (first) == CIRRUS_MOVE
	      && FUNC0 (FUNC3 (body, 1)) == REG
	      && arm_regno == FUNC2 (FUNC3 (body, 1)))
	    FUNC8 (FUNC10 (), first);

	  return;
	}
    }

  /* get_attr cannot accept USE or CLOBBER.  */
  if (!first
      || FUNC0 (first) != INSN
      || FUNC0 (FUNC1 (first)) == USE
      || FUNC0 (FUNC1 (first)) == CLOBBER)
    return;

  attr = FUNC11 (first);

  /* Any coprocessor compare instruction (cfcmps, cfcmpd, ...)
     must be followed by a non-coprocessor instruction.  */
  if (attr == CIRRUS_COMPARE)
    {
      nops = 0;

      t = FUNC12 (first);

      if (FUNC6 (t))
	++ nops;

      if (FUNC6 (FUNC12 (t)))
	++ nops;

      while (nops --)
	FUNC8 (FUNC10 (), first);

      return;
    }
}