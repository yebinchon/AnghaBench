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
#define  BUILT_IN_FINITE 130 
#define  BUILT_IN_ISINF 129 
#define  BUILT_IN_ISNAN 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GT_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  REAL_CST ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  UNORDERED_EXPR ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  dconst0 ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ integer_minus_one_node ; 
 scalar_t__ integer_one_node ; 
 scalar_t__ integer_zero_node ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC19 (tree fndecl, tree arglist, int builtin_index)
{
  tree type = FUNC7 (FUNC7 (fndecl));
  tree arg;
  REAL_VALUE_TYPE r;

  if (!FUNC18 (arglist, REAL_TYPE, VOID_TYPE))
    {
      /* Check that we have exactly one argument.  */
      if (arglist == 0)
	{
	  FUNC11 ("too few arguments to function %qs",
		 FUNC3 (FUNC0 (fndecl)));
	  return error_mark_node;
	}
      else if (FUNC4 (arglist) != 0)
	{
	  FUNC11 ("too many arguments to function %qs",
		 FUNC3 (FUNC0 (fndecl)));
	  return error_mark_node;
	}
      else
	{
	  FUNC11 ("non-floating-point argument to function %qs",
		 FUNC3 (FUNC0 (fndecl)));
	  return error_mark_node;
	}
    }

  arg = FUNC8 (arglist);
  switch (builtin_index)
    {
    case BUILT_IN_ISINF:
      if (!FUNC1 (FUNC9 (FUNC7 (arg))))
	return FUNC14 (type, integer_zero_node, arg);

      if (FUNC5 (arg) == REAL_CST)
	{
	  r = FUNC6 (arg);
	  if (FUNC16 (&r))
	    return FUNC15 (GT_EXPR, &r, &dconst0)
		   ? integer_one_node : integer_minus_one_node;
	  else
	    return integer_zero_node;
	}

      return NULL_TREE;

    case BUILT_IN_FINITE:
      if (!FUNC2 (FUNC9 (FUNC7 (arg)))
	  && !FUNC1 (FUNC9 (FUNC7 (arg))))
	return FUNC14 (type, integer_one_node, arg);

      if (FUNC5 (arg) == REAL_CST)
	{
	  r = FUNC6 (arg);
	  return FUNC16 (&r) || FUNC17 (&r)
		 ? integer_zero_node : integer_one_node;
	}

      return NULL_TREE;

    case BUILT_IN_ISNAN:
      if (!FUNC2 (FUNC9 (FUNC7 (arg))))
	return FUNC14 (type, integer_zero_node, arg);

      if (FUNC5 (arg) == REAL_CST)
	{
	  r = FUNC6 (arg);
	  return FUNC17 (&r) ? integer_one_node : integer_zero_node;
	}

      arg = FUNC10 (arg);
      return FUNC12 (UNORDERED_EXPR, type, arg, arg);

    default:
      FUNC13 ();
    }
}