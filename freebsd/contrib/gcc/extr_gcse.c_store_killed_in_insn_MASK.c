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

/* Variables and functions */
 scalar_t__ ADDRESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ Pmode ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ ZERO_EXTRACT ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ stack_pointer_rtx ; 

__attribute__((used)) static bool
FUNC16 (rtx x, rtx x_regs, rtx insn, int after)
{
  rtx reg, base, note;

  if (!FUNC4 (insn))
    return false;

  if (FUNC0 (insn))
    {
      /* A normal or pure call might read from pattern,
	 but a const call will not.  */
      if (! FUNC1 (insn) || FUNC15 (insn))
	return true;

      /* But even a const call reads its parameters.  Check whether the
	 base of some of registers used in mem is stack pointer.  */
      for (reg = x_regs; reg; reg = FUNC9 (reg, 1))
	{
	  base = FUNC11 (FUNC9 (reg, 0));
	  if (!base
	      || (FUNC2 (base) == ADDRESS
		  && FUNC3 (base) == Pmode
		  && FUNC9 (base, 0) == stack_pointer_rtx))
	    return true;
	}

      return false;
    }

  if (FUNC2 (FUNC6 (insn)) == SET)
    {
      rtx pat = FUNC6 (insn);
      rtx dest = FUNC7 (pat);

      if (FUNC2 (dest) == ZERO_EXTRACT)
	dest = FUNC9 (dest, 0);

      /* Check for memory stores to aliased objects.  */
      if (FUNC5 (dest)
	  && !FUNC10 (dest, x))
	{
	  if (after)
	    {
	      if (FUNC14 (dest, x))
		return true;
	    }
	  else
	    {
	      if (FUNC14 (x, dest))
		return true;
	    }
	}
      if (FUNC12 (FUNC8 (pat), x, after))
	return true;
    }
  else if (FUNC12 (FUNC6 (insn), x, after))
    return true;

  /* If this insn has a REG_EQUAL or REG_EQUIV note referencing a memory
     location aliased with X, then this insn kills X.  */
  note = FUNC13 (insn);
  if (! note)
    return false;
  note = FUNC9 (note, 0);

  /* However, if the note represents a must alias rather than a may
     alias relationship, then it does not kill X.  */
  if (FUNC10 (note, x))
    return false;

  /* See if there are any aliased loads in the note.  */
  return FUNC12 (note, x, after);
}