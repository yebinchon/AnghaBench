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
 int /*<<< orphan*/  CCUmode ; 
 int /*<<< orphan*/  CC_REGNUM ; 
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
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__) ; 
 scalar_t__ FUNC23 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  lshr_optab ; 
 int /*<<< orphan*/  pc_rtx ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC28 (rtx target, rtx op0, rtx op1, rtx len)
{
  rtx ccreg = FUNC25 (CCUmode, CC_REGNUM);
  rtx tmp;

  /* As the result of CMPINT is inverted compared to what we need,
     we have to swap the operands.  */
  tmp = op0; op0 = op1; op1 = tmp;

  if (FUNC1 (len) == CONST_INT && FUNC3 (len) >= 0 && FUNC3 (len) <= 256)
    {
      if (FUNC3 (len) > 0)
        {
          FUNC9 (FUNC18 (op0, op1, FUNC0 (FUNC3 (len) - 1)));
          FUNC9 (FUNC16 (target, ccreg));
        }
      else
        FUNC13 (target, const0_rtx);
    }
  else if (TARGET_MVCLE)
    {
      FUNC9 (FUNC17 (op0, op1, FUNC7 (Pmode, len, 1)));
      FUNC9 (FUNC16 (target, ccreg));
    }
  else
    {
      rtx addr0, addr1, count, blocks, temp;
      rtx loop_start_label = FUNC19 ();
      rtx loop_end_label = FUNC19 ();
      rtx end_label = FUNC19 ();
      enum machine_mode mode;

      mode = FUNC2 (len);
      if (mode == VOIDmode)
        mode = Pmode;

      addr0 = FUNC20 (Pmode);
      addr1 = FUNC20 (Pmode);
      count = FUNC20 (mode);
      blocks = FUNC20 (mode);

      FUNC6 (count, len, 1);
      FUNC8 (count, const0_rtx,
			       EQ, NULL_RTX, mode, 1, end_label);

      FUNC13 (addr0, FUNC15 (FUNC4 (op0, 0), NULL_RTX));
      FUNC13 (addr1, FUNC15 (FUNC4 (op1, 0), NULL_RTX));
      op0 = FUNC5 (op0, VOIDmode, addr0);
      op1 = FUNC5 (op1, VOIDmode, addr1);

      temp = FUNC14 (mode, add_optab, count, constm1_rtx, count, 1, 0);
      if (temp != count)
        FUNC13 (count, temp);

      temp = FUNC14 (mode, lshr_optab, count, FUNC0 (8), blocks, 1, 0);
      if (temp != blocks)
        FUNC13 (blocks, temp);

      FUNC8 (blocks, const0_rtx,
			       EQ, NULL_RTX, mode, 1, loop_end_label);

      FUNC12 (loop_start_label);

      FUNC9 (FUNC18 (op0, op1, FUNC0 (255)));
      temp = FUNC23 (VOIDmode, ccreg, const0_rtx);
      temp = FUNC21 (VOIDmode, temp,
			FUNC22 (VOIDmode, end_label), pc_rtx);
      temp = FUNC26 (VOIDmode, pc_rtx, temp);
      FUNC11 (temp);

      FUNC27 (addr0,
			 FUNC24 (Pmode, addr0, FUNC0 (256)));
      FUNC27 (addr1,
			 FUNC24 (Pmode, addr1, FUNC0 (256)));

      temp = FUNC14 (mode, add_optab, blocks, constm1_rtx, blocks, 1, 0);
      if (temp != blocks)
        FUNC13 (blocks, temp);

      FUNC8 (blocks, const0_rtx,
			       EQ, NULL_RTX, mode, 1, loop_end_label);

      FUNC10 (loop_start_label);
      FUNC12 (loop_end_label);

      FUNC9 (FUNC18 (op0, op1,
				   FUNC7 (Pmode, count, 1)));
      FUNC12 (end_label);

      FUNC9 (FUNC16 (target, ccreg));
    }
}