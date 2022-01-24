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
 scalar_t__ BYTES_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC9 (scalar_t__) ; 

rtx
FUNC10 (rtx *xp)
{
  rtx x = *xp;
  rtx y = FUNC5 (x);

  /* simplify_subreg does not remove subreg from volatile references.
     We are required to.  */
  if (FUNC2 (y))
    {
      int offset = FUNC4 (x);

      /* For paradoxical subregs on big-endian machines, SUBREG_BYTE
	 contains 0 instead of the proper offset.  See simplify_subreg.  */
      if (offset == 0
	  && FUNC1 (FUNC0 (y)) < FUNC1 (FUNC0 (x)))
        {
          int difference = FUNC1 (FUNC0 (y))
			   - FUNC1 (FUNC0 (x));
          if (WORDS_BIG_ENDIAN)
            offset += (difference / UNITS_PER_WORD) * UNITS_PER_WORD;
          if (BYTES_BIG_ENDIAN)
            offset += difference % UNITS_PER_WORD;
        }

      *xp = FUNC6 (y, FUNC0 (x), offset);
    }
  else
    {
      rtx new = FUNC8 (FUNC0 (x), y, FUNC0 (y),
				 FUNC4 (x));

      if (new != 0)
	*xp = new;
      else if (FUNC3 (y))
	{
	  /* Simplify_subreg can't handle some REG cases, but we have to.  */
	  unsigned int regno = FUNC9 (x);
	  *xp = FUNC7 (y, FUNC0 (x), regno, FUNC4 (x));
	}
    }

  return *xp;
}