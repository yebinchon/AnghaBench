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
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int const BUILT_IN_LOG ; 
 int const BUILT_IN_LOG10 ; 
 int const BUILT_IN_LOG10F ; 
 int const BUILT_IN_LOG10L ; 
 int const BUILT_IN_LOG2 ; 
 int const BUILT_IN_LOG2F ; 
 int const BUILT_IN_LOG2L ; 
 int const BUILT_IN_LOGF ; 
 int const BUILT_IN_LOGL ; 
 scalar_t__ REAL_CST ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst1 ; 
 int /*<<< orphan*/  const dconst10 ; 
 int /*<<< orphan*/  const dconst2 ; 
 int /*<<< orphan*/  const dconste ; 
 scalar_t__ flag_unsafe_math_optimizations ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC18 (tree fndecl, tree arglist,
		       const REAL_VALUE_TYPE *value)
{
  if (FUNC17 (arglist, REAL_TYPE, VOID_TYPE))
    {
      tree type = FUNC4 (FUNC4 (fndecl));
      tree arg = FUNC5 (arglist);

      /* Optimize exp*(0.0) = 1.0.  */
      if (FUNC16 (arg))
	return FUNC7 (type, dconst1);

      /* Optimize expN(1.0) = N.  */
      if (FUNC13 (arg))
	{
	  REAL_VALUE_TYPE cst;

	  FUNC10 (&cst, FUNC6 (type), value);
	  return FUNC7 (type, cst);
	}

      /* Attempt to evaluate expN(integer) at compile-time.  */
      if (flag_unsafe_math_optimizations
	  && FUNC0 (arg) == REAL_CST
	  && ! FUNC1 (arg))
	{
	  REAL_VALUE_TYPE cint;
	  REAL_VALUE_TYPE c;
	  HOST_WIDE_INT n;

	  c = FUNC3 (arg);
	  n = FUNC15 (&c);
	  FUNC11 (&cint, VOIDmode, n,
			     n < 0 ? -1 : 0, 0);
	  if (FUNC12 (&c, &cint))
	    {
	      REAL_VALUE_TYPE x;

	      FUNC14 (&x, FUNC6 (type), value, n);
	      return FUNC7 (type, x);
	    }
	}

      /* Optimize expN(logN(x)) = x.  */
      if (flag_unsafe_math_optimizations)
	{
	  const enum built_in_function fcode = FUNC8 (arg);

	  if ((value == &dconste
	       && (fcode == BUILT_IN_LOG
		   || fcode == BUILT_IN_LOGF
		   || fcode == BUILT_IN_LOGL))
	      || (value == &dconst2
		  && (fcode == BUILT_IN_LOG2
		      || fcode == BUILT_IN_LOG2F
		      || fcode == BUILT_IN_LOG2L))
	      || (value == &dconst10
		  && (fcode == BUILT_IN_LOG10
		      || fcode == BUILT_IN_LOG10F
		      || fcode == BUILT_IN_LOG10L)))
	    return FUNC9 (type, FUNC5 (FUNC2 (arg, 1)));
	}
    }

  return 0;
}