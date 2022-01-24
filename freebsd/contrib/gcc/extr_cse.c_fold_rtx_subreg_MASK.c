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
struct table_elt {scalar_t__ exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ASHIFT ; 
 int ASHIFTRT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 int DIV ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int LSHIFTRT ; 
 int MOD ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int ROTATE ; 
 int ROTATERT ; 
 int SIGN_EXTEND ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int UDIV ; 
 int UMOD ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 int ZERO_EXTEND ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int,scalar_t__) ; 
 struct table_elt* FUNC20 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int,int,scalar_t__,int) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC27 (rtx x, rtx insn)
{
  enum machine_mode mode = FUNC4 (x);
  rtx folded_arg0;
  rtx const_arg0;
  rtx new;

  /* See if we previously assigned a constant value to this SUBREG.  */
  if ((new = FUNC21 (x, CONST_INT)) != 0
      || (new = FUNC21 (x, CONST_DOUBLE)) != 0)
    return new;

  /* If this is a paradoxical SUBREG, we have no idea what value the
     extra bits would have.  However, if the operand is equivalent to
     a SUBREG whose operand is the same as our mode, and all the modes
     are within a word, we can just use the inner operand because
     these SUBREGs just say how to treat the register.

     Similarly if we find an integer constant.  */

  if (FUNC7 (mode) > FUNC7 (FUNC4 (FUNC12 (x))))
    {
      enum machine_mode imode = FUNC4 (FUNC12 (x));
      struct table_elt *elt;

      if (FUNC7 (mode) <= UNITS_PER_WORD
	  && FUNC7 (imode) <= UNITS_PER_WORD
	  && (elt = FUNC20 (FUNC12 (x), FUNC8 (FUNC12 (x), imode),
			    imode)) != 0)
	for (elt = elt->first_same_value; elt; elt = elt->next_same_value)
	  {
	    if (FUNC2 (elt->exp)
		&& FUNC4 (elt->exp) == VOIDmode)
	      return elt->exp;

	    if (FUNC3 (elt->exp) == SUBREG
		&& FUNC4 (FUNC12 (elt->exp)) == mode
		&& FUNC17 (elt->exp, elt->exp, 1, false))
	      return FUNC15 (FUNC12 (elt->exp));
	  }

      return x;
    }

  /* Fold SUBREG_REG.  If it changed, see if we can simplify the
     SUBREG.  We might be able to if the SUBREG is extracting a single
     word in an integral mode or extracting the low part.  */

  folded_arg0 = FUNC18 (FUNC12 (x), insn);
  const_arg0 = FUNC16 (folded_arg0);
  if (const_arg0)
    folded_arg0 = const_arg0;

  if (folded_arg0 != FUNC12 (x))
    {
      new = FUNC23 (mode, folded_arg0,
			     FUNC4 (FUNC12 (x)), FUNC11 (x));
      if (new)
	return new;
    }

  if (FUNC10 (folded_arg0)
      && FUNC7 (mode) < FUNC7 (FUNC4 (folded_arg0)))
    {
      struct table_elt *elt;

      elt = FUNC20 (folded_arg0,
		    FUNC8 (folded_arg0, FUNC4 (folded_arg0)),
		    FUNC4 (folded_arg0));

      if (elt)
	elt = elt->first_same_value;

      if (FUNC25 (x))
	/* If this is a narrowing SUBREG and our operand is a REG, see
	   if we can find an equivalence for REG that is an arithmetic
	   operation in a wider mode where both operands are
	   paradoxical SUBREGs from objects of our result mode.  In
	   that case, we couldn-t report an equivalent value for that
	   operation, since we don't know what the extra bits will be.
	   But we can find an equivalence for this SUBREG by folding
	   that operation in the narrow mode.  This allows us to fold
	   arithmetic in narrow modes when the machine only supports
	   word-sized arithmetic.

	   Also look for a case where we have a SUBREG whose operand
	   is the same as our result.  If both modes are smaller than
	   a word, we are simply interpreting a register in different
	   modes and we can use the inner value.  */

	for (; elt; elt = elt->next_same_value)
	  {
	    enum rtx_code eltcode = FUNC3 (elt->exp);

	    /* Just check for unary and binary operations.  */
	    if (FUNC13 (elt->exp)
		&& eltcode != SIGN_EXTEND
		&& eltcode != ZERO_EXTEND
		&& FUNC3 (FUNC14 (elt->exp, 0)) == SUBREG
		&& FUNC4 (FUNC12 (FUNC14 (elt->exp, 0))) == mode
		&& (FUNC6 (mode)
		    == FUNC6 (FUNC4 (FUNC14 (elt->exp, 0)))))
	      {
		rtx op0 = FUNC12 (FUNC14 (elt->exp, 0));

		if (!FUNC10 (op0) && ! FUNC2 (op0))
		  op0 = FUNC18 (op0, NULL_RTX);

		op0 = FUNC16 (op0);
		if (op0)
		  new = FUNC24 (FUNC3 (elt->exp), mode,
						  op0, mode);
	      }
	    else if (FUNC0 (elt->exp)
		     && eltcode != DIV && eltcode != MOD
		     && eltcode != UDIV && eltcode != UMOD
		     && eltcode != ASHIFTRT && eltcode != LSHIFTRT
		     && eltcode != ROTATE && eltcode != ROTATERT
		     && ((FUNC3 (FUNC14 (elt->exp, 0)) == SUBREG
			  && (FUNC4 (FUNC12 (FUNC14 (elt->exp, 0)))
			      == mode))
			 || FUNC2 (FUNC14 (elt->exp, 0)))
		     && ((FUNC3 (FUNC14 (elt->exp, 1)) == SUBREG
			  && (FUNC4 (FUNC12 (FUNC14 (elt->exp, 1)))
			      == mode))
			 || FUNC2 (FUNC14 (elt->exp, 1))))
	      {
		rtx op0 = FUNC19 (mode, FUNC14 (elt->exp, 0));
		rtx op1 = FUNC19 (mode, FUNC14 (elt->exp, 1));

		if (op0 && !FUNC10 (op0) && ! FUNC2 (op0))
		  op0 = FUNC18 (op0, NULL_RTX);

		if (op0)
		  op0 = FUNC16 (op0);

		if (op1 && !FUNC10 (op1) && ! FUNC2 (op1))
		  op1 = FUNC18 (op1, NULL_RTX);

		if (op1)
		  op1 = FUNC16 (op1);

		/* If we are looking for the low SImode part of
		   (ashift:DI c (const_int 32)), it doesn't work to
		   compute that in SImode, because a 32-bit shift in
		   SImode is unpredictable.  We know the value is
		   0.  */
		if (op0 && op1
		    && FUNC3 (elt->exp) == ASHIFT
		    && FUNC3 (op1) == CONST_INT
		    && FUNC9 (op1) >= FUNC5 (mode))
		  {
		    if (FUNC9 (op1)
			< FUNC5 (FUNC4 (elt->exp)))
		      /* If the count fits in the inner mode's width,
			 but exceeds the outer mode's width, the value
			 will get truncated to 0 by the subreg.  */
		      new = FUNC1 (mode);
		    else
		      /* If the count exceeds even the inner mode's width,
			 don't fold this expression.  */
		      new = 0;
		  }
		else if (op0 && op1)
		  new = FUNC22 (FUNC3 (elt->exp),
						   mode, op0, op1);
	      }

	    else if (FUNC3 (elt->exp) == SUBREG
		     && FUNC4 (FUNC12 (elt->exp)) == mode
		     && (FUNC7 (FUNC4 (folded_arg0))
			 <= UNITS_PER_WORD)
		     && FUNC17 (elt->exp, elt->exp, 1, false))
	      new = FUNC15 (FUNC12 (elt->exp));

	    if (new)
	      return new;
	  }
      else
	/* A SUBREG resulting from a zero extension may fold to zero
	   if it extracts higher bits than the ZERO_EXTEND's source
	   bits.  FIXME: if combine tried to, er, combine these
	   instructions, this transformation may be moved to
	   simplify_subreg.  */
	for (; elt; elt = elt->next_same_value)
	  {
	    if (FUNC3 (elt->exp) == ZERO_EXTEND
		&& FUNC26 (x)
		>= FUNC5 (FUNC4 (FUNC14 (elt->exp, 0))))
	      return FUNC1 (mode);
	  }
    }

  return x;
}