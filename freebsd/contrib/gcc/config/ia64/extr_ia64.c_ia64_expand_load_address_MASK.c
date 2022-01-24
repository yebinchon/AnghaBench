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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ Pmode ; 
 scalar_t__ REG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_AUTO_PIC ; 
 scalar_t__ TARGET_NO_PIC ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC20 (rtx dest, rtx src)
{
  FUNC8 (FUNC1 (dest) == REG);

  /* ILP32 mode still loads 64-bits of data from the GOT.  This avoids
     having to pointer-extend the value afterward.  Other forms of address
     computation below are also more natural to compute as 64-bit quantities.
     If we've been given an SImode destination register, change it.  */
  if (FUNC2 (dest) != Pmode)
    dest = FUNC15 (dest, Pmode, FUNC4 (dest), 0);

  if (TARGET_NO_PIC)
    return false;
  if (FUNC19 (src, VOIDmode))
    return false;

  if (TARGET_AUTO_PIC)
    FUNC7 (FUNC11 (dest, src));
  else if (FUNC1 (src) == SYMBOL_REF && FUNC5 (src))
    FUNC7 (FUNC9 (dest, src));
  else if (FUNC18 (src, VOIDmode))
    FUNC7 (FUNC10 (dest, src));
  else
    {
      HOST_WIDE_INT addend = 0;
      rtx tmp;

      /* We did split constant offsets in ia64_expand_move, and we did try
	 to keep them split in move_operand, but we also allowed reload to
	 rematerialize arbitrary constants rather than spill the value to
	 the stack and reload it.  So we have to be prepared here to split
	 them apart again.  */
      if (FUNC1 (src) == CONST)
	{
	  HOST_WIDE_INT hi, lo;

	  hi = FUNC3 (FUNC6 (FUNC6 (src, 0), 1));
	  lo = ((hi & 0x3fff) ^ 0x2000) - 0x2000;
	  hi = hi - lo;

	  if (lo != 0)
	    {
	      addend = lo;
	      src = FUNC17 (FUNC6 (FUNC6 (src, 0), 0), hi);
	    }
	}

      tmp = FUNC12 (Pmode, src);
      tmp = FUNC14 (Pmode, tmp, pic_offset_table_rtx);
      FUNC7 (FUNC16 (VOIDmode, dest, tmp));

      tmp = FUNC13 (Pmode, dest, src);
      FUNC7 (FUNC16 (VOIDmode, dest, tmp));

      if (addend)
	{
	  tmp = FUNC14 (Pmode, dest, FUNC0 (addend));
	  FUNC7 (FUNC16 (VOIDmode, dest, tmp));
	}
    }

  return true;
}