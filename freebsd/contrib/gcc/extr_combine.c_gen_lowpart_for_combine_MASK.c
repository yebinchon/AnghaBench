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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (int) ; 
 scalar_t__ LABEL_REF ; 
 int FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (unsigned int,unsigned int) ; 
 int Pmode ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 unsigned int UNITS_PER_WORD ; 
 int VOIDmode ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC11 (int,scalar_t__) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int,scalar_t__,int,int) ; 
 int FUNC19 (int,int) ; 

__attribute__((used)) static rtx
FUNC20 (enum machine_mode omode, rtx x)
{
  enum machine_mode imode = FUNC2 (x);
  unsigned int osize = FUNC3 (omode);
  unsigned int isize = FUNC3 (imode);
  rtx result;

  if (omode == imode)
    return x;

  /* Return identity if this is a CONST or symbolic reference.  */
  if (omode == Pmode
      && (FUNC1 (x) == CONST
	  || FUNC1 (x) == SYMBOL_REF
	  || FUNC1 (x) == LABEL_REF))
    return x;

  /* We can only support MODE being wider than a word if X is a
     constant integer or has a mode the same size.  */
  if (FUNC3 (omode) > UNITS_PER_WORD
      && ! ((imode == VOIDmode
	     && (FUNC1 (x) == CONST_INT
		 || FUNC1 (x) == CONST_DOUBLE))
	    || isize == osize))
    goto fail;

  /* X might be a paradoxical (subreg (mem)).  In that case, gen_lowpart
     won't know what to do.  So we will strip off the SUBREG here and
     process normally.  */
  if (FUNC1 (x) == SUBREG && FUNC5 (FUNC8 (x)))
    {
      x = FUNC8 (x);

      /* For use in case we fall down into the address adjustments
	 further below, we need to adjust the known mode and size of
	 x; imode and isize, since we just adjusted x.  */
      imode = FUNC2 (x);

      if (imode == omode)
	return x;

      isize = FUNC3 (imode);
    }

  result = FUNC11 (omode, x);

#ifdef CANNOT_CHANGE_MODE_CLASS
  if (result != 0 && GET_CODE (result) == SUBREG)
    record_subregs_of_mode (result);
#endif

  if (result)
    return result;

  if (FUNC5 (x))
    {
      int offset = 0;

      /* Refuse to work on a volatile memory ref or one with a mode-dependent
	 address.  */
      if (FUNC6 (x) || FUNC16 (FUNC9 (x, 0)))
	goto fail;

      /* If we want to refer to something bigger than the original memref,
	 generate a paradoxical subreg instead.  That will force a reload
	 of the original memref X.  */
      if (isize < osize)
	return FUNC13 (omode, x, 0);

      if (WORDS_BIG_ENDIAN)
	offset = FUNC4 (isize, UNITS_PER_WORD) - FUNC4 (osize, UNITS_PER_WORD);

      /* Adjust the address so that the address-after-the-data is
	 unchanged.  */
      if (BYTES_BIG_ENDIAN)
	offset -= FUNC7 (UNITS_PER_WORD, osize) - FUNC7 (UNITS_PER_WORD, isize);

      return FUNC10 (x, omode, offset);
    }

  /* If X is a comparison operator, rewrite it in a new mode.  This
     probably won't match, but may allow further simplifications.  */
  else if (FUNC0 (x))
    return FUNC14 (FUNC1 (x), omode, FUNC9 (x, 0), FUNC9 (x, 1));

  /* If we couldn't simplify X any other way, just enclose it in a
     SUBREG.  Normally, this SUBREG won't match, but some patterns may
     include an explicit SUBREG or we may simplify it further in combine.  */
  else
    {
      int offset = 0;
      rtx res;

      offset = FUNC19 (omode, imode);
      if (imode == VOIDmode)
	{
	  imode = FUNC15 (omode);
	  x = FUNC11 (imode, x);
	  if (x == NULL)
	    goto fail;
	}
      res = FUNC18 (omode, x, imode, offset);
      if (res)
	return res;
    }

 fail:
  return FUNC12 (imode, const0_rtx);
}