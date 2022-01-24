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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DFmode ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_VECTOR_INT ; 
 scalar_t__ TARGET_SSE2 ; 
 scalar_t__ TARGET_SSE_PARTIAL_REG_DEPENDENCY ; 
 scalar_t__ TARGET_SSE_SPLIT_REGS ; 
 int /*<<< orphan*/  TARGET_SSE_TYPELESS_STORES ; 
 scalar_t__ TARGET_SSE_UNALIGNED_MOVE_OPTIMAL ; 
 int V16QImode ; 
 int V2DFmode ; 
 int /*<<< orphan*/  V2SFmode ; 
 int V4SFmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize_size ; 

void
FUNC20 (enum machine_mode mode, rtx operands[])
{
  rtx op0, op1, m;

  op0 = operands[0];
  op1 = operands[1];

  if (FUNC2 (op1))
    {
      /* If we're optimizing for size, movups is the smallest.  */
      if (optimize_size)
	{
	  op0 = FUNC7 (V4SFmode, op0);
	  op1 = FUNC7 (V4SFmode, op1);
	  FUNC4 (FUNC17 (op0, op1));
	  return;
	}

      /* ??? If we have typed data, then it would appear that using
	 movdqu is the only way to get unaligned data loaded with
	 integer type.  */
      if (TARGET_SSE2 && FUNC1 (mode) == MODE_VECTOR_INT)
	{
	  op0 = FUNC7 (V16QImode, op0);
	  op1 = FUNC7 (V16QImode, op1);
	  FUNC4 (FUNC11 (op0, op1));
	  return;
	}

      if (TARGET_SSE2 && mode == V2DFmode)
        {
          rtx zero;

          if (TARGET_SSE_UNALIGNED_MOVE_OPTIMAL)
            {
              op0 = FUNC7 (V2DFmode, op0);
              op1 = FUNC7 (V2DFmode, op1);
              FUNC4 (FUNC12 (op0, op1));
              return;
            }

	  /* When SSE registers are split into halves, we can avoid
	     writing to the top half twice.  */
	  if (TARGET_SSE_SPLIT_REGS)
	    {
	      FUNC4 (FUNC8 (VOIDmode, op0));
	      zero = op0;
	    }
	  else
	    {
	      /* ??? Not sure about the best option for the Intel chips.
		 The following would seem to satisfy; the register is
		 entirely cleared, breaking the dependency chain.  We
		 then store to the upper half, with a dependency depth
		 of one.  A rumor has it that Intel recommends two movsd
		 followed by an unpacklpd, but this is unconfirmed.  And
		 given that the dependency depth of the unpacklpd would
		 still be one, I'm not sure why this would be better.  */
	      zero = FUNC0 (V2DFmode);
	    }

	  m = FUNC3 (op1, DFmode, 0);
	  FUNC4 (FUNC10 (op0, zero, m));
	  m = FUNC3 (op1, DFmode, 8);
	  FUNC4 (FUNC9 (op0, op0, m));
	}
      else
        {
          if (TARGET_SSE_UNALIGNED_MOVE_OPTIMAL)
            {
              op0 = FUNC7 (V4SFmode, op0);
              op1 = FUNC7 (V4SFmode, op1);
              FUNC4 (FUNC17 (op0, op1));
              return;
            }

	  if (TARGET_SSE_PARTIAL_REG_DEPENDENCY)
	    FUNC5 (op0, FUNC0 (mode));
	  else
	    FUNC4 (FUNC8 (VOIDmode, op0));

	  if (mode != V4SFmode)
	    op0 = FUNC7 (V4SFmode, op0);
	  m = FUNC3 (op1, V2SFmode, 0);
	  FUNC4 (FUNC16 (op0, op0, m));
	  m = FUNC3 (op1, V2SFmode, 8);
	  FUNC4 (FUNC15 (op0, op0, m));
	}
    }
  else if (FUNC2 (op0))
    {
      /* If we're optimizing for size, movups is the smallest.  */
      if (optimize_size)
	{
	  op0 = FUNC7 (V4SFmode, op0);
	  op1 = FUNC7 (V4SFmode, op1);
	  FUNC4 (FUNC17 (op0, op1));
	  return;
	}

      /* ??? Similar to above, only less clear because of quote
	 typeless stores unquote.  */
      if (TARGET_SSE2 && !TARGET_SSE_TYPELESS_STORES
	  && FUNC1 (mode) == MODE_VECTOR_INT)
        {
	  op0 = FUNC7 (V16QImode, op0);
	  op1 = FUNC7 (V16QImode, op1);
	  FUNC4 (FUNC11 (op0, op1));
	  return;
	}

      if (TARGET_SSE2 && mode == V2DFmode)
	{
	  m = FUNC3 (op0, DFmode, 0);
	  FUNC4 (FUNC14 (m, op1));
	  m = FUNC3 (op0, DFmode, 8);
	  FUNC4 (FUNC13 (m, op1));
	}
      else
	{
	  if (mode != V4SFmode)
	    op1 = FUNC7 (V4SFmode, op1);
	  m = FUNC3 (op0, V2SFmode, 0);
	  FUNC4 (FUNC19 (m, op1));
	  m = FUNC3 (op0, V2SFmode, 8);
	  FUNC4 (FUNC18 (m, op1));
	}
    }
  else
    FUNC6 ();
}