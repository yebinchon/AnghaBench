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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int DFmode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int Pmode ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ TARGET_ALTIVEC_ABI ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_SPE_ABI ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (rtx frame_reg, rtx frame_ptr, enum machine_mode mode,
		 unsigned int regno, int offset, HOST_WIDE_INT total_size)
{
  rtx reg, offset_rtx, insn, mem, addr, int_rtx;
  rtx replacea, replaceb;

  int_rtx = FUNC1 (offset);

  /* Some cases that need register indexed addressing.  */
  if ((TARGET_ALTIVEC_ABI && FUNC0 (mode))
      || (TARGET_E500_DOUBLE && mode == DFmode)
      || (TARGET_SPE_ABI
	  && FUNC3 (mode)
	  && !FUNC2 (offset)))
    {
      /* Whomever calls us must make sure r11 is available in the
	 flow path of instructions in the prologue.  */
      offset_rtx = FUNC7 (Pmode, 11);
      FUNC4 (offset_rtx, int_rtx);

      replacea = offset_rtx;
      replaceb = int_rtx;
    }
  else
    {
      offset_rtx = int_rtx;
      replacea = NULL_RTX;
      replaceb = NULL_RTX;
    }

  reg = FUNC7 (mode, regno);
  addr = FUNC6 (Pmode, frame_reg, offset_rtx);
  mem = FUNC5 (mode, addr);

  insn = FUNC4 (mem, reg);

  FUNC8 (insn, frame_ptr, total_size, replacea, replaceb);
}