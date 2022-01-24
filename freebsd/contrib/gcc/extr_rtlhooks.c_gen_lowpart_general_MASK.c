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
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 scalar_t__ FUNC12 (scalar_t__,int,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  no_new_pseudos ; 

rtx
FUNC17 (enum machine_mode mode, rtx x)
{
  rtx result = FUNC16 (mode, x);

  if (result)
    return result;
  /* If it's a REG, it must be a hard reg that's not valid in MODE.  */
  else if (FUNC8 (x)
	   /* Or we could have a subreg of a floating point value.  */
	   || (FUNC1 (x) == SUBREG
	       && FUNC0 (FUNC2 (FUNC10 (x)))))
    {
      result = FUNC16 (mode, FUNC13 (x));
      FUNC15 (result != 0);
      return result;
    }
  else
    {
      int offset = 0;

      /* The only additional case we can do is MEM.  */
      FUNC15 (FUNC6 (x));

      /* The following exposes the use of "x" to CSE.  */
      if (FUNC4 (FUNC2 (x)) <= UNITS_PER_WORD
	  && FUNC9 (FUNC2 (x))
	  && FUNC11 (FUNC3 (mode),
				    FUNC3 (FUNC2 (x)))
	  && ! no_new_pseudos)
	return FUNC17 (mode, FUNC14 (FUNC2 (x), x));

      if (WORDS_BIG_ENDIAN)
	offset = (FUNC5 (FUNC4 (FUNC2 (x)), UNITS_PER_WORD)
		  - FUNC5 (FUNC4 (mode), UNITS_PER_WORD));

      if (BYTES_BIG_ENDIAN)
	/* Adjust the address so that the address-after-the-data
	   is unchanged.  */
	offset -= (FUNC7 (UNITS_PER_WORD, FUNC4 (mode))
		   - FUNC7 (UNITS_PER_WORD, FUNC4 (FUNC2 (x))));

      return FUNC12 (x, mode, offset);
    }
}