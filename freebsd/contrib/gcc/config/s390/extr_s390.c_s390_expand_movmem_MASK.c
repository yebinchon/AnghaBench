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
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int Pmode ; 
 scalar_t__ TARGET_MVCLE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_optab ; 
 scalar_t__ FUNC5 (scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lshr_optab ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC21 (rtx dst, rtx src, rtx len)
{
  if (FUNC1 (len) == CONST_INT && FUNC3 (len) >= 0 && FUNC3 (len) <= 256)
    {
      if (FUNC3 (len) > 0)
        FUNC9 (FUNC17 (dst, src, FUNC0 (FUNC3 (len) - 1)));
    }

  else if (TARGET_MVCLE)
    {
      FUNC9 (FUNC16 (dst, src, FUNC7 (Pmode, len, 1)));
    }

  else
    {
      rtx dst_addr, src_addr, count, blocks, temp;
      rtx loop_start_label = FUNC15 ();
      rtx loop_end_label = FUNC15 ();
      rtx end_label = FUNC15 ();
      enum machine_mode mode;

      mode = FUNC2 (len);
      if (mode == VOIDmode)
        mode = Pmode;

      dst_addr = FUNC18 (Pmode);
      src_addr = FUNC18 (Pmode);
      count = FUNC18 (mode);
      blocks = FUNC18 (mode);

      FUNC6 (count, len, 1);
      FUNC8 (count, const0_rtx,
			       EQ, NULL_RTX, mode, 1, end_label);

      FUNC12 (dst_addr, FUNC14 (FUNC4 (dst, 0), NULL_RTX));
      FUNC12 (src_addr, FUNC14 (FUNC4 (src, 0), NULL_RTX));
      dst = FUNC5 (dst, VOIDmode, dst_addr);
      src = FUNC5 (src, VOIDmode, src_addr);

      temp = FUNC13 (mode, add_optab, count, constm1_rtx, count, 1, 0);
      if (temp != count)
        FUNC12 (count, temp);

      temp = FUNC13 (mode, lshr_optab, count, FUNC0 (8), blocks, 1, 0);
      if (temp != blocks)
        FUNC12 (blocks, temp);

      FUNC8 (blocks, const0_rtx,
			       EQ, NULL_RTX, mode, 1, loop_end_label);

      FUNC11 (loop_start_label);

      FUNC9 (FUNC17 (dst, src, FUNC0 (255)));
      FUNC20 (dst_addr,
			 FUNC19 (Pmode, dst_addr, FUNC0 (256)));
      FUNC20 (src_addr,
			 FUNC19 (Pmode, src_addr, FUNC0 (256)));

      temp = FUNC13 (mode, add_optab, blocks, constm1_rtx, blocks, 1, 0);
      if (temp != blocks)
        FUNC12 (blocks, temp);

      FUNC8 (blocks, const0_rtx,
			       EQ, NULL_RTX, mode, 1, loop_end_label);

      FUNC10 (loop_start_label);
      FUNC11 (loop_end_label);

      FUNC9 (FUNC17 (dst, src,
				   FUNC7 (Pmode, count, 1)));
      FUNC11 (end_label);
    }
}