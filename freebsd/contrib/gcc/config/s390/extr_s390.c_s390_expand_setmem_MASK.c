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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int Pmode ; 
 scalar_t__ QImode ; 
 scalar_t__ TARGET_MVCLE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_optab ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  lshr_optab ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__) ; 

void
FUNC27 (rtx dst, rtx len, rtx val)
{
  if (FUNC1 (len) == CONST_INT && FUNC3 (len) == 0)
    return;

  FUNC18 (FUNC1 (val) == CONST_INT || FUNC2 (val) == QImode);
  
  if (FUNC1 (len) == CONST_INT && FUNC3 (len) > 0 && FUNC3 (len) <= 257)
    {
      if (val == const0_rtx && FUNC3 (len) <= 256)
        FUNC11 (FUNC19 (dst, FUNC0 (FUNC3 (len) - 1)));
      else
	{
	  /* Initialize memory by storing the first byte.  */
	  FUNC14 (FUNC5 (dst, QImode, 0), val);
	  
	  if (FUNC3 (len) > 1)
	    {
	      /* Initiate 1 byte overlap move.
	         The first byte of DST is propagated through DSTP1.
		 Prepare a movmem for:  DST+1 = DST (length = LEN - 1).
		 DST is set to size 1 so the rest of the memory location
		 does not count as source operand.  */
	      rtx dstp1 = FUNC5 (dst, VOIDmode, 1);
	      FUNC26 (dst, const1_rtx);

	      FUNC11 (FUNC21 (dstp1, dst, 
					   FUNC0 (FUNC3 (len) - 2)));
	    }
	}
    }

  else if (TARGET_MVCLE)
    {
      val = FUNC16 (FUNC7 (Pmode, QImode, val, 1));
      FUNC11 (FUNC24 (dst, FUNC9 (Pmode, len, 1), val));
    }

  else
    {
      rtx dst_addr, src_addr, count, blocks, temp, dstp1 = NULL_RTX;
      rtx loop_start_label = FUNC20 ();
      rtx loop_end_label = FUNC20 ();
      rtx end_label = FUNC20 ();
      enum machine_mode mode;

      mode = FUNC2 (len);
      if (mode == VOIDmode)
        mode = Pmode;

      dst_addr = FUNC22 (Pmode);
      src_addr = FUNC22 (Pmode);
      count = FUNC22 (mode);
      blocks = FUNC22 (mode);

      FUNC8 (count, len, 1);
      FUNC10 (count, const0_rtx,
			       EQ, NULL_RTX, mode, 1, end_label);

      FUNC14 (dst_addr, FUNC17 (FUNC4 (dst, 0), NULL_RTX));
      dst = FUNC6 (dst, VOIDmode, dst_addr);

      if (val == const0_rtx)
        temp = FUNC15 (mode, add_optab, count, constm1_rtx, count, 1, 0);
      else
	{
	  dstp1 = FUNC5 (dst, VOIDmode, 1);
	  FUNC26 (dst, const1_rtx);

	  /* Initialize memory by storing the first byte.  */
	  FUNC14 (FUNC5 (dst, QImode, 0), val);
	  
	  /* If count is 1 we are done.  */
	  FUNC10 (count, const1_rtx,
				   EQ, NULL_RTX, mode, 1, end_label);

	  temp = FUNC15 (mode, add_optab, count, FUNC0 (-2), count, 1, 0);
	}
      if (temp != count)
        FUNC14 (count, temp);

      temp = FUNC15 (mode, lshr_optab, count, FUNC0 (8), blocks, 1, 0);
      if (temp != blocks)
        FUNC14 (blocks, temp);

      FUNC10 (blocks, const0_rtx,
			       EQ, NULL_RTX, mode, 1, loop_end_label);

      FUNC13 (loop_start_label);

      if (val == const0_rtx)
	FUNC11 (FUNC19 (dst, FUNC0 (255)));
      else
	FUNC11 (FUNC21 (dstp1, dst, FUNC0 (255)));
      FUNC25 (dst_addr,
			 FUNC23 (Pmode, dst_addr, FUNC0 (256)));

      temp = FUNC15 (mode, add_optab, blocks, constm1_rtx, blocks, 1, 0);
      if (temp != blocks)
        FUNC14 (blocks, temp);

      FUNC10 (blocks, const0_rtx,
			       EQ, NULL_RTX, mode, 1, loop_end_label);

      FUNC12 (loop_start_label);
      FUNC13 (loop_end_label);

      if (val == const0_rtx)
        FUNC11 (FUNC19 (dst, FUNC9 (Pmode, count, 1)));
      else
        FUNC11 (FUNC21 (dstp1, dst, FUNC9 (Pmode, count, 1)));
      FUNC13 (end_label);
    }
}