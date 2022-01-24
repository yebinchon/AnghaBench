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
 unsigned int BITS_PER_UNIT ; 
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 unsigned int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 unsigned int FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 unsigned int FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 

rtx
FUNC24 (enum machine_mode mode, rtx x)
{
  rtx temp, insn, set;

  if (FUNC9 (x))
    return x;

  if (FUNC18 (x, mode))
    {
      temp = FUNC17 (mode);
      insn = FUNC14 (temp, x);
    }
  else
    {
      temp = FUNC16 (x, NULL_RTX);
      if (FUNC9 (temp))
	insn = FUNC19 ();
      else
	{
	  rtx temp2 = FUNC17 (mode);
	  insn = FUNC14 (temp2, temp);
	  temp = temp2;
	}
    }

  /* Let optimizers know that TEMP's value never changes
     and that X can be substituted for it.  Don't get confused
     if INSN set something else (such as a SUBREG of TEMP).  */
  if (FUNC0 (x)
      && (set = FUNC23 (insn)) != 0
      && FUNC10 (set) == temp
      && ! FUNC21 (x, FUNC11 (set)))
    FUNC22 (insn, REG_EQUAL, x);

  /* Let optimizers know that TEMP is a pointer, and if so, the
     known alignment of that pointer.  */
  {
    unsigned align = 0;
    if (FUNC3 (x) == SYMBOL_REF)
      {
        align = BITS_PER_UNIT;
	if (FUNC12 (x) && FUNC2 (FUNC12 (x)))
	  align = FUNC1 (FUNC12 (x));
      }
    else if (FUNC3 (x) == LABEL_REF)
      align = BITS_PER_UNIT;
    else if (FUNC3 (x) == CONST
	     && FUNC3 (FUNC13 (x, 0)) == PLUS
	     && FUNC3 (FUNC13 (FUNC13 (x, 0), 0)) == SYMBOL_REF
	     && FUNC3 (FUNC13 (FUNC13 (x, 0), 1)) == CONST_INT)
      {
	rtx s = FUNC13 (FUNC13 (x, 0), 0);
	rtx c = FUNC13 (FUNC13 (x, 0), 1);
	unsigned sa, ca;

	sa = BITS_PER_UNIT;
	if (FUNC12 (s) && FUNC2 (FUNC12 (s)))
	  sa = FUNC1 (FUNC12 (s));

	ca = FUNC15 (FUNC4 (c) & -FUNC4 (c)) * BITS_PER_UNIT;

	align = FUNC8 (sa, ca);
      }
    else if (FUNC6 (x) && FUNC7 (x))
      align = FUNC5 (x);

    if (align)
      FUNC20 (temp, align);
  }

  return temp;
}