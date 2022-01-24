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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ASM_OPERANDS ; 
 scalar_t__ CC0 ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int LO_SUM ; 
 int MEM ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int PARALLEL ; 
 scalar_t__ PC ; 
 int REG ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int STRICT_LOW_PART ; 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int VOIDmode ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 scalar_t__ FUNC16 (scalar_t__,int,int) ; 
 int FUNC17 (scalar_t__,int) ; 
 scalar_t__ ZERO_EXTEND ; 
 int ZERO_EXTRACT ; 
 scalar_t__ cc0_rtx ; 
 scalar_t__ FUNC18 (scalar_t__,int,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (int,scalar_t__) ; 
 int n_occurrences ; 
 scalar_t__ FUNC22 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (scalar_t__,int,scalar_t__,int) ; 

__attribute__((used)) static rtx
FUNC24 (rtx x, rtx from, rtx to, int in_dest, int unique_copy)
{
  enum rtx_code code = FUNC1 (x);
  enum machine_mode op0_mode = VOIDmode;
  const char *fmt;
  int len, i;
  rtx new;

/* Two expressions are equal if they are identical copies of a shared
   RTX or if they are both registers with the same register number
   and mode.  */

#define COMBINE_RTX_EQUAL_P(X,Y)			\
  ((X) == (Y)						\
   || (REG_P (X) && REG_P (Y)	\
       && REGNO (X) == REGNO (Y) && GET_MODE (X) == GET_MODE (Y)))

  if (! in_dest && COMBINE_RTX_EQUAL_P (x, from))
    {
      n_occurrences++;
      return (unique_copy && n_occurrences > 1 ? FUNC19 (to) : to);
    }

  /* If X and FROM are the same register but different modes, they will
     not have been seen as equal above.  However, flow.c will make a
     LOG_LINKS entry for that case.  If we do nothing, we will try to
     rerecognize our original insn and, when it succeeds, we will
     delete the feeding insn, which is incorrect.

     So force this insn not to match in this (rare) case.  */
  if (! in_dest && code == REG && FUNC9 (from)
      && FUNC7 (x) == FUNC7 (from))
    return FUNC21 (FUNC2 (x), const0_rtx);

  /* If this is an object, we are done unless it is a MEM or LO_SUM, both
     of which may contain things that can be combined.  */
  if (code != MEM && code != LO_SUM && FUNC6 (x))
    return x;

  /* It is possible to have a subexpression appear twice in the insn.
     Suppose that FROM is a register that appears within TO.
     Then, after that subexpression has been scanned once by `subst',
     the second time it is scanned, TO may be found.  If we were
     to scan TO here, we would find FROM within it and create a
     self-referent rtl structure which is completely wrong.  */
  if (COMBINE_RTX_EQUAL_P (x, to))
    return to;

  /* Parallel asm_operands need special attention because all of the
     inputs are shared across the arms.  Furthermore, unsharing the
     rtl results in recognition failures.  Failure to handle this case
     specially can result in circular rtl.

     Solve this by doing a normal pass across the first entry of the
     parallel, and only processing the SET_DESTs of the subsequent
     entries.  Ug.  */

  if (code == PARALLEL
      && FUNC1 (FUNC16 (x, 0, 0)) == SET
      && FUNC1 (FUNC11 (FUNC16 (x, 0, 0))) == ASM_OPERANDS)
    {
      new = FUNC24 (FUNC16 (x, 0, 0), from, to, 0, unique_copy);

      /* If this substitution failed, this whole thing fails.  */
      if (FUNC1 (new) == CLOBBER
	  && FUNC15 (new, 0) == const0_rtx)
	return new;

      FUNC14 (FUNC16 (x, 0, 0), new);

      for (i = FUNC17 (x, 0) - 1; i >= 1; i--)
	{
	  rtx dest = FUNC10 (FUNC16 (x, 0, i));

	  if (!FUNC9 (dest)
	      && FUNC1 (dest) != CC0
	      && FUNC1 (dest) != PC)
	    {
	      new = FUNC24 (dest, from, to, 0, unique_copy);

	      /* If this substitution failed, this whole thing fails.  */
	      if (FUNC1 (new) == CLOBBER
		  && FUNC15 (new, 0) == const0_rtx)
		return new;

	      FUNC14 (FUNC10 (FUNC16 (x, 0, i)), new);
	    }
	}
    }
  else
    {
      len = FUNC4 (code);
      fmt = FUNC3 (code);

      /* We don't need to process a SET_DEST that is a register, CC0,
	 or PC, so set up to skip this common case.  All other cases
	 where we want to suppress replacing something inside a
	 SET_SRC are handled via the IN_DEST operand.  */
      if (code == SET
	  && (FUNC9 (FUNC10 (x))
	      || FUNC1 (FUNC10 (x)) == CC0
	      || FUNC1 (FUNC10 (x)) == PC))
	fmt = "ie";

      /* Get the mode of operand 0 in case X is now a SIGN_EXTEND of a
	 constant.  */
      if (fmt[0] == 'e')
	op0_mode = FUNC2 (FUNC15 (x, 0));

      for (i = 0; i < len; i++)
	{
	  if (fmt[i] == 'E')
	    {
	      int j;
	      for (j = FUNC17 (x, i) - 1; j >= 0; j--)
		{
		  if (COMBINE_RTX_EQUAL_P (FUNC16 (x, i, j), from))
		    {
		      new = (unique_copy && n_occurrences
			     ? FUNC19 (to) : to);
		      n_occurrences++;
		    }
		  else
		    {
		      new = FUNC24 (FUNC16 (x, i, j), from, to, 0,
				   unique_copy);

		      /* If this substitution failed, this whole thing
			 fails.  */
		      if (FUNC1 (new) == CLOBBER
			  && FUNC15 (new, 0) == const0_rtx)
			return new;
		    }

		  FUNC14 (FUNC16 (x, i, j), new);
		}
	    }
	  else if (fmt[i] == 'e')
	    {
	      /* If this is a register being set, ignore it.  */
	      new = FUNC15 (x, i);
	      if (in_dest
		  && i == 0
		  && (((code == SUBREG || code == ZERO_EXTRACT)
		       && FUNC9 (new))
		      || code == STRICT_LOW_PART))
		;

	      else if (COMBINE_RTX_EQUAL_P (FUNC15 (x, i), from))
		{
		  /* In general, don't install a subreg involving two
		     modes not tieable.  It can worsen register
		     allocation, and can even make invalid reload
		     insns, since the reg inside may need to be copied
		     from in the outside mode, and that may be invalid
		     if it is an fp reg copied in integer mode.

		     We allow two exceptions to this: It is valid if
		     it is inside another SUBREG and the mode of that
		     SUBREG and the mode of the inside of TO is
		     tieable and it is valid if X is a SET that copies
		     FROM to CC0.  */

		  if (FUNC1 (to) == SUBREG
		      && ! FUNC5 (FUNC2 (to),
					    FUNC2 (FUNC13 (to)))
		      && ! (code == SUBREG
			    && FUNC5 (FUNC2 (x),
						FUNC2 (FUNC13 (to))))
#ifdef HAVE_cc0
		      && ! (code == SET && i == 1 && XEXP (x, 0) == cc0_rtx)
#endif
		      )
		    return FUNC21 (VOIDmode, const0_rtx);

#ifdef CANNOT_CHANGE_MODE_CLASS
		  if (code == SUBREG
		      && REG_P (to)
		      && REGNO (to) < FIRST_PSEUDO_REGISTER
		      && REG_CANNOT_CHANGE_MODE_P (REGNO (to),
						   GET_MODE (to),
						   GET_MODE (x)))
		    return gen_rtx_CLOBBER (VOIDmode, const0_rtx);
#endif

		  new = (unique_copy && n_occurrences ? FUNC19 (to) : to);
		  n_occurrences++;
		}
	      else
		/* If we are in a SET_DEST, suppress most cases unless we
		   have gone inside a MEM, in which case we want to
		   simplify the address.  We assume here that things that
		   are actually part of the destination have their inner
		   parts in the first expression.  This is true for SUBREG,
		   STRICT_LOW_PART, and ZERO_EXTRACT, which are the only
		   things aside from REG and MEM that should appear in a
		   SET_DEST.  */
		new = FUNC24 (FUNC15 (x, i), from, to,
			     (((in_dest
				&& (code == SUBREG || code == STRICT_LOW_PART
				    || code == ZERO_EXTRACT))
			       || code == SET)
			      && i == 0), unique_copy);

	      /* If we found that we will have to reject this combination,
		 indicate that by returning the CLOBBER ourselves, rather than
		 an expression containing it.  This will speed things up as
		 well as prevent accidents where two CLOBBERs are considered
		 to be equal, thus producing an incorrect simplification.  */

	      if (FUNC1 (new) == CLOBBER && FUNC15 (new, 0) == const0_rtx)
		return new;

	      if (FUNC1 (x) == SUBREG
		  && (FUNC1 (new) == CONST_INT
		      || FUNC1 (new) == CONST_DOUBLE))
		{
		  enum machine_mode mode = FUNC2 (x);

		  x = FUNC22 (FUNC2 (x), new,
				       FUNC2 (FUNC13 (x)),
				       FUNC12 (x));
		  if (! x)
		    x = FUNC21 (mode, const0_rtx);
		}
	      else if (FUNC1 (new) == CONST_INT
		       && FUNC1 (x) == ZERO_EXTEND)
		{
		  x = FUNC23 (ZERO_EXTEND, FUNC2 (x),
						new, FUNC2 (FUNC15 (x, 0)));
		  FUNC20 (x);
		}
	      else
		FUNC14 (FUNC15 (x, i), new);
	    }
	}
    }

  /* Try to simplify X.  If the simplification changed the code, it is likely
     that further simplification will help, so loop, but limit the number
     of repetitions that will be performed.  */

  for (i = 0; i < 4; i++)
    {
      /* If X is sufficiently simple, don't bother trying to do anything
	 with it.  */
      if (code != CONST_INT && code != REG && code != CLOBBER)
	x = FUNC18 (x, op0_mode, in_dest);

      if (FUNC1 (x) == code)
	break;

      code = FUNC1 (x);

      /* We no longer know the original mode of operand 0 since we
	 have changed the form of X)  */
      op0_mode = VOIDmode;
    }

  return x;
}