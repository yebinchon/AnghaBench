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
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ MINUS_EXPR ; 
 int MULT_EXPR ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOID_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  integer_one_node ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sizetype ; 
 scalar_t__ warn_pointer_arith ; 

tree
FUNC14 (enum tree_code resultcode, tree ptrop, tree intop)
{
  tree size_exp, ret;

  /* The result is a pointer of the same type that is being added.  */

  tree result_type = FUNC3 (ptrop);

  if (FUNC0 (FUNC3 (result_type)) == VOID_TYPE)
    {
      if (pedantic || warn_pointer_arith)
	FUNC12 ("pointer of type %<void *%> used in arithmetic");
      size_exp = integer_one_node;
    }
  else if (FUNC0 (FUNC3 (result_type)) == FUNCTION_TYPE)
    {
      if (pedantic || warn_pointer_arith)
	FUNC12 ("pointer to a function used in arithmetic");
      size_exp = integer_one_node;
    }
  else if (FUNC0 (FUNC3 (result_type)) == METHOD_TYPE)
    {
      if (pedantic || warn_pointer_arith)
	FUNC12 ("pointer to member function used in arithmetic");
      size_exp = integer_one_node;
    }
  else
    size_exp = FUNC13 (FUNC3 (result_type));

  /* We are manipulating pointer values, so we don't need to warn
     about relying on undefined signed overflow.  We disable the
     warning here because we use integer types so fold won't know that
     they are really pointers.  */
  FUNC10 ();

  /* If what we are about to multiply by the size of the elements
     contains a constant term, apply distributive law
     and multiply that constant term separately.
     This helps produce common subexpressions.  */

  if ((FUNC0 (intop) == PLUS_EXPR || FUNC0 (intop) == MINUS_EXPR)
      && !FUNC1 (intop)
      && FUNC1 (FUNC2 (intop, 1))
      && FUNC1 (size_exp)
      /* If the constant comes from pointer subtraction,
	 skip this optimization--it would cause an error.  */
      && FUNC0 (FUNC3 (FUNC2 (intop, 0))) == INTEGER_TYPE
      /* If the constant is unsigned, and smaller than the pointer size,
	 then we must skip this optimization.  This is because it could cause
	 an overflow error if the constant is negative but INTOP is not.  */
      && (!FUNC5 (FUNC3 (intop))
	  || (FUNC4 (FUNC3 (intop))
	      == FUNC4 (FUNC3 (ptrop)))))
    {
      enum tree_code subcode = resultcode;
      tree int_type = FUNC3 (intop);
      if (FUNC0 (intop) == MINUS_EXPR)
	subcode = (subcode == PLUS_EXPR ? MINUS_EXPR : PLUS_EXPR);
      /* Convert both subexpression types to the type of intop,
	 because weird cases involving pointer arithmetic
	 can result in a sum or difference with different type args.  */
      ptrop = FUNC6 (subcode, ptrop,
			       FUNC8 (int_type, FUNC2 (intop, 1)), 1);
      intop = FUNC8 (int_type, FUNC2 (intop, 0));
    }

  /* Convert the integer argument to a type the same size as sizetype
     so the multiply won't overflow spuriously.  */

  if (FUNC4 (FUNC3 (intop)) != FUNC4 (sizetype)
      || FUNC5 (FUNC3 (intop)) != FUNC5 (sizetype))
    intop = FUNC8 (FUNC7 (FUNC4 (sizetype),
					     FUNC5 (sizetype)), intop);

  /* Replace the integer argument with a suitable product by the object size.
     Do this multiplication as signed, then convert to the appropriate
     pointer type (actually unsigned integral).  */

  intop = FUNC8 (result_type,
		   FUNC6 (MULT_EXPR, intop,
				    FUNC8 (FUNC3 (intop), size_exp), 1));

  /* Create the sum or difference.  */
  ret = FUNC9 (resultcode, result_type, ptrop, intop);

  FUNC11 ();

  return ret;
}