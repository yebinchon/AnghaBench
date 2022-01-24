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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CONST_INT ; 
 int DFmode ; 
 int DImode ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ LO_SUM ; 
 scalar_t__ MEM ; 
 scalar_t__ PLUS ; 
 int Pmode ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ TARGET_ARCH32 ; 
 scalar_t__ TARGET_ARCH64 ; 
 int /*<<< orphan*/  TARGET_CM_MEDMID ; 
 scalar_t__ TARGET_FPU ; 
 scalar_t__ TARGET_HARD_QUAD ; 
 int TFmode ; 
 scalar_t__ USE_AS_OFFSETABLE_LO10 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int flag_pic ; 
 int /*<<< orphan*/  optimize ; 
 int /*<<< orphan*/ * pic_offset_table_rtx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC12 (enum machine_mode mode, rtx addr, int strict)
{
  rtx rs1 = NULL, rs2 = NULL, imm1 = NULL;

  if (FUNC4 (addr) || FUNC1 (addr) == SUBREG)
    rs1 = addr;
  else if (FUNC1 (addr) == PLUS)
    {
      rs1 = FUNC10 (addr, 0);
      rs2 = FUNC10 (addr, 1);

      /* Canonicalize.  REG comes first, if there are no regs,
	 LO_SUM comes first.  */
      if (!FUNC4 (rs1)
	  && FUNC1 (rs1) != SUBREG
	  && (FUNC4 (rs2)
	      || FUNC1 (rs2) == SUBREG
	      || (FUNC1 (rs2) == LO_SUM && FUNC1 (rs1) != LO_SUM)))
	{
	  rs1 = FUNC10 (addr, 1);
	  rs2 = FUNC10 (addr, 0);
	}

      if ((flag_pic == 1
	   && rs1 == pic_offset_table_rtx
	   && !FUNC4 (rs2)
	   && FUNC1 (rs2) != SUBREG
	   && FUNC1 (rs2) != LO_SUM
	   && FUNC1 (rs2) != MEM
	   && ! FUNC8 (rs2)
	   && (! FUNC11 (rs2, VOIDmode) || mode == Pmode)
	   && (FUNC1 (rs2) != CONST_INT || FUNC7 (rs2)))
	  || ((FUNC4 (rs1)
	       || FUNC1 (rs1) == SUBREG)
	      && FUNC5 (rs2)))
	{
	  imm1 = rs2;
	  rs2 = NULL;
	}
      else if ((FUNC4 (rs1) || FUNC1 (rs1) == SUBREG)
	       && (FUNC4 (rs2) || FUNC1 (rs2) == SUBREG))
	{
	  /* We prohibit REG + REG for TFmode when there are no quad move insns
	     and we consequently need to split.  We do this because REG+REG
	     is not an offsettable address.  If we get the situation in reload
	     where source and destination of a movtf pattern are both MEMs with
	     REG+REG address, then only one of them gets converted to an
	     offsettable address.  */
	  if (mode == TFmode
	      && ! (TARGET_FPU && TARGET_ARCH64 && TARGET_HARD_QUAD))
	    return 0;

	  /* We prohibit REG + REG on ARCH32 if not optimizing for
	     DFmode/DImode because then mem_min_alignment is likely to be zero
	     after reload and the  forced split would lack a matching splitter
	     pattern.  */
	  if (TARGET_ARCH32 && !optimize
	      && (mode == DFmode || mode == DImode))
	    return 0;
	}
      else if (USE_AS_OFFSETABLE_LO10
	       && FUNC1 (rs1) == LO_SUM
	       && TARGET_ARCH64
	       && ! TARGET_CM_MEDMID
	       && FUNC6 (rs2))
	{
	  rs2 = NULL;
	  imm1 = FUNC10 (rs1, 1);
	  rs1 = FUNC10 (rs1, 0);
	  if (! FUNC0 (imm1) || FUNC8 (rs1))
	    return 0;
	}
    }
  else if (FUNC1 (addr) == LO_SUM)
    {
      rs1 = FUNC10 (addr, 0);
      imm1 = FUNC10 (addr, 1);

      if (! FUNC0 (imm1) || FUNC8 (rs1))
	return 0;

      /* We can't allow TFmode in 32-bit mode, because an offset greater
	 than the alignment (8) may cause the LO_SUM to overflow.  */
      if (mode == TFmode && TARGET_ARCH32)
	return 0;
    }
  else if (FUNC1 (addr) == CONST_INT && FUNC7 (addr))
    return 1;
  else
    return 0;

  if (FUNC1 (rs1) == SUBREG)
    rs1 = FUNC9 (rs1);
  if (!FUNC4 (rs1))
    return 0;

  if (rs2)
    {
      if (FUNC1 (rs2) == SUBREG)
	rs2 = FUNC9 (rs2);
      if (!FUNC4 (rs2))
	return 0;
    }

  if (strict)
    {
      if (!FUNC3 (FUNC2 (rs1))
	  || (rs2 && !FUNC3 (FUNC2 (rs2))))
	return 0;
    }
  else
    {
      if ((FUNC2 (rs1) >= 32
	   && FUNC2 (rs1) != FRAME_POINTER_REGNUM
	   && FUNC2 (rs1) < FIRST_PSEUDO_REGISTER)
	  || (rs2
	      && (FUNC2 (rs2) >= 32
		  && FUNC2 (rs2) != FRAME_POINTER_REGNUM
		  && FUNC2 (rs2) < FIRST_PSEUDO_REGISTER)))
	return 0;
    }
  return 1;
}