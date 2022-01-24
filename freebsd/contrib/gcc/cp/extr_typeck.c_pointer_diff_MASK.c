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
 int /*<<< orphan*/  EXACT_DIV_EXPR ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ METHOD_TYPE ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ warn_pointer_arith ; 

__attribute__((used)) static tree
FUNC12 (tree op0, tree op1, tree ptrtype)
{
  tree result;
  tree restype = ptrdiff_type_node;
  tree target_type = FUNC2 (ptrtype);

  if (!FUNC5 (target_type, NULL_TREE))
    return error_mark_node;

  if (pedantic || warn_pointer_arith)
    {
      if (FUNC1 (target_type) == VOID_TYPE)
	FUNC10 ("ISO C++ forbids using pointer of type %<void *%> in subtraction");
      if (FUNC1 (target_type) == FUNCTION_TYPE)
	FUNC10 ("ISO C++ forbids using pointer to a function in subtraction");
      if (FUNC1 (target_type) == METHOD_TYPE)
	FUNC10 ("ISO C++ forbids using pointer to a method in subtraction");
    }

  /* First do the subtraction as integers;
     then drop through to build the divide operator.  */

  op0 = FUNC6 (MINUS_EXPR,
			    FUNC7 (restype, op0),
			    FUNC7 (restype, op1));

  /* This generates an error if op1 is a pointer to an incomplete type.  */
  if (!FUNC0 (FUNC2 (FUNC2 (op1))))
    FUNC8 ("invalid use of a pointer to an incomplete type in pointer arithmetic");

  op1 = (FUNC3 (ptrtype)
	 ? FUNC11 (target_type)
	 : integer_one_node);

  /* Do the division.  */

  result = FUNC4 (EXACT_DIV_EXPR, restype, op0, FUNC7 (restype, op1));
  return FUNC9 (result);
}