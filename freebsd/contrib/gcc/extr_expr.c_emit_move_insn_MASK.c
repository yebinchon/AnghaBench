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
 int BLKmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ flag_force_addr ; 
 scalar_t__ FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 

rtx
FUNC21 (rtx x, rtx y)
{
  enum machine_mode mode = FUNC2 (x);
  rtx y_cst = NULL_RTX;
  rtx last_insn, set;

  FUNC13 (mode != BLKmode
	      && (FUNC2 (y) == mode || FUNC2 (y) == VOIDmode));

  if (FUNC1 (y))
    {
      if (optimize
	  && FUNC6 (FUNC2 (x))
	  && (last_insn = FUNC10 (x, y)))
	return last_insn;

      y_cst = y;

      if (!FUNC3 (y))
	{
	  y = FUNC12 (mode, y);

	  /* If the target's cannot_force_const_mem prevented the spill,
	     assume that the target's move expanders will also take care
	     of the non-legitimate constant.  */
	  if (!y)
	    y = y_cst;
	  else
	    y = FUNC19 (y);
	}
    }

  /* If X or Y are memory references, verify that their addresses are valid
     for the machine.  */
  if (FUNC4 (x)
      && ((! FUNC14 (FUNC2 (x), FUNC9 (x, 0))
	   && ! FUNC15 (x, FUNC2 (x)))
	  || (flag_force_addr
	      && FUNC0 (FUNC9 (x, 0)))))
    x = FUNC20 (x);

  if (FUNC4 (y)
      && (! FUNC14 (FUNC2 (y), FUNC9 (y, 0))
	  || (flag_force_addr
	      && FUNC0 (FUNC9 (y, 0)))))
    y = FUNC20 (y);

  FUNC13 (mode != BLKmode);

  last_insn = FUNC11 (x, y);

  if (y_cst && FUNC5 (x)
      && (set = FUNC18 (last_insn)) != NULL_RTX
      && FUNC7 (set) == x
      && ! FUNC16 (y_cst, FUNC8 (set)))
    FUNC17 (last_insn, REG_EQUAL, y_cst);

  return last_insn;
}