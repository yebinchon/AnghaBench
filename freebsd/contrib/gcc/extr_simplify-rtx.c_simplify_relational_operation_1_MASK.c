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
 int BImode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 int EQ ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int MINUS ; 
 scalar_t__ MODE_INT ; 
 int NE ; 
 scalar_t__ NULL_RTX ; 
 int PLUS ; 
 int STORE_FLAG_VALUE ; 
 int UNKNOWN ; 
 int VOIDmode ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int XOR ; 
 int /*<<< orphan*/  ZERO_EXTEND ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ flag_unsafe_math_optimizations ; 
 scalar_t__ FUNC9 (int,scalar_t__,int) ; 
 int FUNC10 (scalar_t__,int) ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int,int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC18 (enum rtx_code code, enum machine_mode mode,
				 enum machine_mode cmp_mode, rtx op0, rtx op1)
{
  enum rtx_code op0code = FUNC2 (op0);

  if (FUNC2 (op1) == CONST_INT)
    {
      if (FUNC7 (op1) == 0 && FUNC0 (op0))
	{
	  /* If op0 is a comparison, extract the comparison arguments
	     from it.  */
	  if (code == NE)
	    {
	      if (FUNC3 (op0) == mode)
		return FUNC17 (op0);
	      else
		return FUNC15 (FUNC2 (op0), mode, VOIDmode,
					        FUNC8 (op0, 0), FUNC8 (op0, 1));
	    }
	  else if (code == EQ)
	    {
	      enum rtx_code new_code = FUNC11 (op0, NULL_RTX);
	      if (new_code != UNKNOWN)
	        return FUNC15 (new_code, mode, VOIDmode,
					        FUNC8 (op0, 0), FUNC8 (op0, 1));
	    }
	}
    }

  /* (eq/ne (plus x cst1) cst2) simplifies to (eq/ne x (cst2 - cst1))  */
  if ((code == EQ || code == NE)
      && (op0code == PLUS || op0code == MINUS)
      && FUNC1 (op1)
      && FUNC1 (FUNC8 (op0, 1))
      && (FUNC6 (cmp_mode) || flag_unsafe_math_optimizations))
    {
      rtx x = FUNC8 (op0, 0);
      rtx c = FUNC8 (op0, 1);

      c = FUNC14 (op0code == PLUS ? MINUS : PLUS,
			       cmp_mode, op1, c);
      return FUNC15 (code, mode, cmp_mode, x, c);
    }

  /* (ne:SI (zero_extract:SI FOO (const_int 1) BAR) (const_int 0))) is
     the same as (zero_extract:SI FOO (const_int 1) BAR).  */
  if (code == NE
      && op1 == const0_rtx
      && FUNC4 (mode) == MODE_INT
      && cmp_mode != VOIDmode
      /* ??? Work-around BImode bugs in the ia64 backend.  */
      && mode != BImode
      && cmp_mode != BImode
      && FUNC10 (op0, cmp_mode) == 1
      && STORE_FLAG_VALUE == 1)
    return FUNC5 (mode) > FUNC5 (cmp_mode)
	   ? FUNC16 (ZERO_EXTEND, mode, op0, cmp_mode)
	   : FUNC9 (mode, op0, cmp_mode);

  /* (eq/ne (xor x y) 0) simplifies to (eq/ne x y).  */
  if ((code == EQ || code == NE)
      && op1 == const0_rtx
      && op0code == XOR)
    return FUNC15 (code, mode, cmp_mode,
				    FUNC8 (op0, 0), FUNC8 (op0, 1));

  /* (eq/ne (xor x y) x) simplifies to (eq/ne y 0).  */
  if ((code == EQ || code == NE)
      && op0code == XOR
      && FUNC12 (FUNC8 (op0, 0), op1)
      && !FUNC13 (FUNC8 (op0, 0)))
    return FUNC15 (code, mode, cmp_mode,
				    FUNC8 (op0, 1), const0_rtx);

  /* Likewise (eq/ne (xor x y) y) simplifies to (eq/ne x 0).  */
  if ((code == EQ || code == NE)
      && op0code == XOR
      && FUNC12 (FUNC8 (op0, 1), op1)
      && !FUNC13 (FUNC8 (op0, 1)))
    return FUNC15 (code, mode, cmp_mode,
				    FUNC8 (op0, 0), const0_rtx);

  /* (eq/ne (xor x C1) C2) simplifies to (eq/ne x (C1^C2)).  */
  if ((code == EQ || code == NE)
      && op0code == XOR
      && (FUNC2 (op1) == CONST_INT
	  || FUNC2 (op1) == CONST_DOUBLE)
      && (FUNC2 (FUNC8 (op0, 1)) == CONST_INT
	  || FUNC2 (FUNC8 (op0, 1)) == CONST_DOUBLE))
    return FUNC15 (code, mode, cmp_mode, FUNC8 (op0, 0),
				    FUNC14 (XOR, cmp_mode,
							 FUNC8 (op0, 1), op1));

  return NULL_RTX;
}