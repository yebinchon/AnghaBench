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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ AND ; 
 scalar_t__ ASHIFT ; 
 scalar_t__ BITS_BIG_ENDIAN ; 
 int BLKmode ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ IOR ; 
 scalar_t__ MINUS ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  NOT ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ZERO_EXTRACT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nonzero_sign_valid ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC20 (rtx x)
{
  rtx inner;
  rtx pos;			/* Always counts from low bit.  */
  int len;
  rtx mask, cleared, masked;
  enum machine_mode compute_mode;

  /* Loop until we find something we can't simplify.  */
  while (1)
    {
      if (FUNC2 (FUNC8 (x)) == STRICT_LOW_PART
	  && FUNC2 (FUNC11 (FUNC8 (x), 0)) == SUBREG)
	{
	  inner = FUNC10 (FUNC11 (FUNC8 (x), 0));
	  len = FUNC4 (FUNC3 (FUNC11 (FUNC8 (x), 0)));
	  pos = FUNC1 (FUNC19 (FUNC11 (FUNC8 (x), 0)));
	}
      else if (FUNC2 (FUNC8 (x)) == ZERO_EXTRACT
	       && FUNC2 (FUNC11 (FUNC8 (x), 1)) == CONST_INT)
	{
	  inner = FUNC11 (FUNC8 (x), 0);
	  len = FUNC6 (FUNC11 (FUNC8 (x), 1));
	  pos = FUNC11 (FUNC8 (x), 2);

	  /* A constant position should stay within the width of INNER.  */
	  if (FUNC2 (pos) == CONST_INT
	      && FUNC6 (pos) + len > FUNC4 (FUNC3 (inner)))
	    break;

	  if (BITS_BIG_ENDIAN)
	    {
	      if (FUNC2 (pos) == CONST_INT)
		pos = FUNC1 (FUNC4 (FUNC3 (inner)) - len
			       - FUNC6 (pos));
	      else if (FUNC2 (pos) == MINUS
		       && FUNC2 (FUNC11 (pos, 1)) == CONST_INT
		       && (FUNC6 (FUNC11 (pos, 1))
			   == FUNC4 (FUNC3 (inner)) - len))
		/* If position is ADJUST - X, new position is X.  */
		pos = FUNC11 (pos, 0);
	      else
		pos = FUNC16 (MINUS, FUNC3 (pos),
					   FUNC1 (FUNC4 (
						    FUNC3 (inner))
						    - len),
					   pos);
	    }
	}

      /* A SUBREG between two modes that occupy the same numbers of words
	 can be done by moving the SUBREG to the source.  */
      else if (FUNC2 (FUNC8 (x)) == SUBREG
	       /* We need SUBREGs to compute nonzero_bits properly.  */
	       && nonzero_sign_valid
	       && (((FUNC5 (FUNC3 (FUNC8 (x)))
		     + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)
		   == ((FUNC5 (FUNC3 (FUNC10 (FUNC8 (x))))
			+ (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)))
	{
	  x = FUNC14 (VOIDmode, FUNC10 (FUNC8 (x)),
			   FUNC13
			   (FUNC3 (FUNC10 (FUNC8 (x))),
			    FUNC9 (x)));
	  continue;
	}
      else
	break;

      while (FUNC2 (inner) == SUBREG && FUNC18 (inner))
	inner = FUNC10 (inner);

      compute_mode = FUNC3 (inner);

      /* Don't attempt bitwise arithmetic on non scalar integer modes.  */
      if (! FUNC7 (compute_mode))
	{
	  enum machine_mode imode;

	  /* Don't do anything for vector or complex integral types.  */
	  if (! FUNC0 (compute_mode))
	    break;

	  /* Try to find an integral mode to pun with.  */
	  imode = FUNC15 (FUNC4 (compute_mode), MODE_INT, 0);
	  if (imode == BLKmode)
	    break;

	  compute_mode = imode;
	  inner = FUNC13 (imode, inner);
	}

      /* Compute a mask of LEN bits, if we can do this on the host machine.  */
      if (len >= HOST_BITS_PER_WIDE_INT)
	break;

      /* Now compute the equivalent expression.  Make a copy of INNER
	 for the SET_DEST in case it is a MEM into which we will substitute;
	 we don't want shared RTL in that case.  */
      mask = FUNC1 (((HOST_WIDE_INT) 1 << len) - 1);
      cleared = FUNC16 (AND, compute_mode,
				     FUNC17 (NOT, compute_mode,
				       FUNC16 (ASHIFT,
							    compute_mode,
							    mask, pos),
				       compute_mode),
				     inner);
      masked = FUNC16 (ASHIFT, compute_mode,
				    FUNC16 (
				      AND, compute_mode,
				      FUNC13 (compute_mode, FUNC9 (x)),
				      mask),
				    pos);

      x = FUNC14 (VOIDmode, FUNC12 (inner),
		       FUNC16 (IOR, compute_mode,
					    cleared, masked));
    }

  return x;
}