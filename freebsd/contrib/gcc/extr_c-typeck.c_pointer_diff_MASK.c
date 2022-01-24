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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONVERT_EXPR ; 
 int /*<<< orphan*/  EXACT_DIV_EXPR ; 
 scalar_t__ FUNCTION_TYPE ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOID_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 
 scalar_t__ warn_pointer_arith ; 

__attribute__((used)) static tree
FUNC12 (tree op0, tree op1)
{
  tree restype = ptrdiff_type_node;

  tree target_type = FUNC3 (FUNC3 (op0));
  tree con0, con1, lit0, lit1;
  tree orig_op1 = op1;

  if (pedantic || warn_pointer_arith)
    {
      if (FUNC1 (target_type) == VOID_TYPE)
	FUNC11 ("pointer of type %<void *%> used in subtraction");
      if (FUNC1 (target_type) == FUNCTION_TYPE)
	FUNC11 ("pointer to a function used in subtraction");
    }

  /* If the conversion to ptrdiff_type does anything like widening or
     converting a partial to an integral mode, we get a convert_expression
     that is in the way to do any simplifications.
     (fold-const.c doesn't know that the extra bits won't be needed.
     split_tree uses STRIP_SIGN_NOPS, which leaves conversions to a
     different mode in place.)
     So first try to find a common term here 'by hand'; we want to cover
     at least the cases that occur in legal static initializers.  */
  if ((FUNC1 (op0) == NOP_EXPR || FUNC1 (op0) == CONVERT_EXPR)
      && (FUNC4 (FUNC3 (op0))
	  == FUNC4 (FUNC3 (FUNC2 (op0, 0)))))
    con0 = FUNC2 (op0, 0);
  else
    con0 = op0;
  if ((FUNC1 (op1) == NOP_EXPR || FUNC1 (op1) == CONVERT_EXPR)
      && (FUNC4 (FUNC3 (op1))
	  == FUNC4 (FUNC3 (FUNC2 (op1, 0)))))
    con1 = FUNC2 (op1, 0);
  else
    con1 = op1;

  if (FUNC1 (con0) == PLUS_EXPR)
    {
      lit0 = FUNC2 (con0, 1);
      con0 = FUNC2 (con0, 0);
    }
  else
    lit0 = integer_zero_node;

  if (FUNC1 (con1) == PLUS_EXPR)
    {
      lit1 = FUNC2 (con1, 1);
      con1 = FUNC2 (con1, 0);
    }
  else
    lit1 = integer_zero_node;

  if (FUNC10 (con0, con1, 0))
    {
      op0 = lit0;
      op1 = lit1;
    }


  /* First do the subtraction as integers;
     then drop through to build the divide operator.
     Do not do default conversions on the minus operator
     in case restype is a short type.  */

  op0 = FUNC5 (MINUS_EXPR, FUNC7 (restype, op0),
			 FUNC7 (restype, op1), 0);
  /* This generates an error if op1 is pointer to incomplete type.  */
  if (!FUNC0 (FUNC3 (FUNC3 (orig_op1))))
    FUNC8 ("arithmetic on pointer to an incomplete type");

  /* This generates an error if op0 is pointer to incomplete type.  */
  op1 = FUNC6 (target_type);

  /* Divide by the size, in easiest possible way.  */
  return FUNC9 (EXACT_DIV_EXPR, restype, op0, FUNC7 (restype, op1));
}