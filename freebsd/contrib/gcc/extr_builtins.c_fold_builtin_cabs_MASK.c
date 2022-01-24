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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_EXPR ; 
 int /*<<< orphan*/  BUILT_IN_SQRT ; 
 scalar_t__ COMPLEX_CST ; 
 scalar_t__ COMPLEX_EXPR ; 
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ CONJ_EXPR ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NEGATE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  flag_trapping_math ; 
 scalar_t__ flag_unsafe_math_optimizations ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  optimize_size ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC20 (tree arglist, tree type, tree fndecl)
{
  tree arg;

  if (!arglist || FUNC0 (arglist))
    return NULL_TREE;

  arg = FUNC8 (arglist);
  if (FUNC1 (FUNC7 (arg)) != COMPLEX_TYPE
      || FUNC1 (FUNC7 (FUNC7 (arg))) != REAL_TYPE)
    return NULL_TREE;

  /* Evaluate cabs of a constant at compile-time.  */
  if (flag_unsafe_math_optimizations
      && FUNC1 (arg) == COMPLEX_CST
      && FUNC1 (FUNC5 (arg)) == REAL_CST
      && FUNC1 (FUNC3 (arg)) == REAL_CST
      && ! FUNC2 (FUNC5 (arg))
      && ! FUNC2 (FUNC3 (arg)))
    {
      REAL_VALUE_TYPE r, i;

      r = FUNC6 (FUNC5 (arg));
      i = FUNC6 (FUNC3 (arg));

      FUNC17 (&r, MULT_EXPR, &r, &r);
      FUNC17 (&i, MULT_EXPR, &i, &i);
      FUNC17 (&r, PLUS_EXPR, &r, &i);
      if (FUNC18 (&r, FUNC9 (type), &r)
	  || ! flag_trapping_math)
	return FUNC11 (type, r);
    }

  /* If either part is zero, cabs is fabs of the other.  */
  if (FUNC1 (arg) == COMPLEX_EXPR
      && FUNC19 (FUNC4 (arg, 0)))
    return FUNC14 (ABS_EXPR, type, FUNC4 (arg, 1));
  if (FUNC1 (arg) == COMPLEX_EXPR
      && FUNC19 (FUNC4 (arg, 1)))
    return FUNC14 (ABS_EXPR, type, FUNC4 (arg, 0));

  /* Optimize cabs(-z) and cabs(conj(z)) as cabs(z).  */
  if (FUNC1 (arg) == NEGATE_EXPR
      || FUNC1 (arg) == CONJ_EXPR)
    {
      tree arglist = FUNC12 (NULL_TREE, FUNC4 (arg, 0));
      return FUNC10 (fndecl, arglist);
    }

  /* Don't do this when optimizing for size.  */
  if (flag_unsafe_math_optimizations
      && optimize && !optimize_size)
    {
      tree sqrtfn = FUNC16 (type, BUILT_IN_SQRT);

      if (sqrtfn != NULL_TREE)
	{
	  tree rpart, ipart, result, arglist;

	  arg = FUNC13 (arg);

	  rpart = FUNC14 (REALPART_EXPR, type, arg);
	  ipart = FUNC14 (IMAGPART_EXPR, type, arg);

	  rpart = FUNC13 (rpart);
	  ipart = FUNC13 (ipart);

	  result = FUNC15 (PLUS_EXPR, type,
				FUNC15 (MULT_EXPR, type,
					     rpart, rpart),
				FUNC15 (MULT_EXPR, type,
					     ipart, ipart));

	  arglist = FUNC12 (NULL_TREE, result);
	  return FUNC10 (sqrtfn, arglist);
	}
    }

  return NULL_TREE;
}