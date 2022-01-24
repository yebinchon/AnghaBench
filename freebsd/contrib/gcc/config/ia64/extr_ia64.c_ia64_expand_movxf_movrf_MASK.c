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
 scalar_t__ CONST_DOUBLE ; 
 int DImode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ MEM ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TImode ; 
 int WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reload_completed ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

bool
FUNC19 (enum machine_mode mode, rtx operands[])
{
  rtx op0 = operands[0];

  if (FUNC1 (op0) == SUBREG)
    op0 = FUNC5 (op0);

  /* We must support XFmode loads into general registers for stdarg/vararg,
     unprototyped calls, and a rare case where a long double is passed as
     an argument after a float HFA fills the FP registers.  We split them into
     DImode loads for convenience.  We also need to support XFmode stores
     for the last case.  This case does not happen for stdarg/vararg routines,
     because we do a block store to memory of unnamed arguments.  */

  if (FUNC1 (op0) == REG && FUNC3 (FUNC4 (op0)))
    {
      rtx out[2];

      /* We're hoping to transform everything that deals with XFmode
	 quantities and GR registers early in the compiler.  */
      FUNC11 (!no_new_pseudos);

      /* Struct to register can just use TImode instead.  */
      if ((FUNC1 (operands[1]) == SUBREG
	   && FUNC2 (FUNC5 (operands[1])) == TImode)
	  || (FUNC1 (operands[1]) == REG
	      && FUNC3 (FUNC4 (operands[1]))))
	{
	  rtx op1 = operands[1];

	  if (FUNC1 (op1) == SUBREG)
	    op1 = FUNC5 (op1);
	  else
	    op1 = FUNC12 (TImode, FUNC4 (op1));

	  FUNC8 (FUNC12 (TImode, FUNC4 (op0)), op1);
	  return true;
	}

      if (FUNC1 (operands[1]) == CONST_DOUBLE)
	{
	  /* Don't word-swap when reading in the constant.  */
	  FUNC8 (FUNC12 (DImode, FUNC4 (op0)),
			  FUNC15 (operands[1], WORDS_BIG_ENDIAN,
					   0, mode));
	  FUNC8 (FUNC12 (DImode, FUNC4 (op0) + 1),
			  FUNC15 (operands[1], !WORDS_BIG_ENDIAN,
					   0, mode));
	  return true;
	}

      /* If the quantity is in a register not known to be GR, spill it.  */
      if (FUNC16 (operands[1], mode))
	operands[1] = FUNC17 (operands[1], 1, mode);

      FUNC11 (FUNC1 (operands[1]) == MEM);

      /* Don't word-swap when reading in the value.  */
      out[0] = FUNC12 (DImode, FUNC4 (op0));
      out[1] = FUNC12 (DImode, FUNC4 (op0) + 1);

      FUNC8 (out[0], FUNC6 (operands[1], DImode, 0));
      FUNC8 (out[1], FUNC6 (operands[1], DImode, 8));
      return true;
    }

  if (FUNC1 (operands[1]) == REG && FUNC3 (FUNC4 (operands[1])))
    {
      /* We're hoping to transform everything that deals with XFmode
	 quantities and GR registers early in the compiler.  */
      FUNC11 (!no_new_pseudos);

      /* Op0 can't be a GR_REG here, as that case is handled above.
	 If op0 is a register, then we spill op1, so that we now have a
	 MEM operand.  This requires creating an XFmode subreg of a TImode reg
	 to force the spill.  */
      if (FUNC16 (operands[0], mode))
	{
	  rtx op1 = FUNC12 (TImode, FUNC4 (operands[1]));
	  op1 = FUNC13 (mode, op1, 0);
	  operands[1] = FUNC17 (op1, 0, mode);
	}

      else
	{
	  rtx in[2];

	  FUNC11 (FUNC1 (operands[0]) == MEM);

	  /* Don't word-swap when writing out the value.  */
	  in[0] = FUNC12 (DImode, FUNC4 (operands[1]));
	  in[1] = FUNC12 (DImode, FUNC4 (operands[1]) + 1);

	  FUNC8 (FUNC6 (operands[0], DImode, 0), in[0]);
	  FUNC8 (FUNC6 (operands[0], DImode, 8), in[1]);
	  return true;
	}
    }

  if (!reload_in_progress && !reload_completed)
    {
      operands[1] = FUNC17 (operands[1], 0, mode);

      if (FUNC2 (op0) == TImode && FUNC1 (op0) == REG)
	{
	  rtx memt, memx, in = operands[1];
	  if (FUNC0 (in))
	    in = FUNC18 (FUNC9 (mode, in));
	  if (FUNC1 (in) == MEM)
	    memt = FUNC6 (in, TImode, 0);
	  else
	    {
	      memt = FUNC7 (TImode, 16, 0);
	      memx = FUNC6 (memt, mode, 0);
	      FUNC8 (memx, in);
	    }
	  FUNC8 (op0, memt);
	  return true;
	}

      if (!FUNC14 (operands[0], operands[1]))
	operands[1] = FUNC10 (mode, operands[1]);
    }

  return false;
}