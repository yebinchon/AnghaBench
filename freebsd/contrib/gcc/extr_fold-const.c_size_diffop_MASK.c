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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ INTEGER_TYPE ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ bitsizetype ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ sbitsizetype ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ ssizetype ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

tree
FUNC10 (tree arg0, tree arg1)
{
  tree type = FUNC1 (arg0);
  tree ctype;

  FUNC6 (FUNC0 (type) == INTEGER_TYPE && FUNC2 (type)
	      && type == FUNC1 (arg1));

  /* If the type is already signed, just do the simple thing.  */
  if (!FUNC3 (type))
    return FUNC7 (MINUS_EXPR, arg0, arg1);

  ctype = type == bitsizetype ? sbitsizetype : ssizetype;

  /* If either operand is not a constant, do the conversions to the signed
     type and subtract.  The hardware will do the right thing with any
     overflow in the subtraction.  */
  if (FUNC0 (arg0) != INTEGER_CST || FUNC0 (arg1) != INTEGER_CST)
    return FUNC7 (MINUS_EXPR, FUNC5 (ctype, arg0),
		       FUNC5 (ctype, arg1));

  /* If ARG0 is larger than ARG1, subtract and return the result in CTYPE.
     Otherwise, subtract the other way, convert to CTYPE (we know that can't
     overflow) and negate (which can't either).  Special-case a result
     of zero while we're here.  */
  if (FUNC8 (arg0, arg1))
    return FUNC4 (ctype, 0);
  else if (FUNC9 (arg1, arg0))
    return FUNC5 (ctype, FUNC7 (MINUS_EXPR, arg0, arg1));
  else
    return FUNC7 (MINUS_EXPR, FUNC4 (ctype, 0),
		       FUNC5 (ctype, FUNC7 (MINUS_EXPR,
							arg1, arg0)));
}