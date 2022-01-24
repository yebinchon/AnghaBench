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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int INTEGER_TYPE ; 
 scalar_t__ NULL_TREE ; 
 int REAL_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TRUTH_NOT_EXPR ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int UNORDERED_EXPR ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC15 (tree fndecl, tree arglist,
			    enum tree_code unordered_code,
			    enum tree_code ordered_code)
{
  tree type = FUNC5 (FUNC5 (fndecl));
  enum tree_code code;
  tree arg0, arg1;
  tree type0, type1;
  enum tree_code code0, code1;
  tree cmp_type = NULL_TREE;

  if (!FUNC14 (arglist, REAL_TYPE, REAL_TYPE, VOID_TYPE))
    {
      /* Check that we have exactly two arguments.  */
      if (arglist == 0 || FUNC3 (arglist) == 0)
	{
	  FUNC9 ("too few arguments to function %qs",
		 FUNC2 (FUNC0 (fndecl)));
	  return error_mark_node;
	}
      else if (FUNC3 (FUNC3 (arglist)) != 0)
	{
	  FUNC9 ("too many arguments to function %qs",
		 FUNC2 (FUNC0 (fndecl)));
	  return error_mark_node;
	}
    }

  arg0 = FUNC6 (arglist);
  arg1 = FUNC6 (FUNC3 (arglist));

  type0 = FUNC5 (arg0);
  type1 = FUNC5 (arg1);

  code0 = FUNC4 (type0);
  code1 = FUNC4 (type1);

  if (code0 == REAL_TYPE && code1 == REAL_TYPE)
    /* Choose the wider of two real types.  */
    cmp_type = FUNC8 (type0) >= FUNC8 (type1)
      ? type0 : type1;
  else if (code0 == REAL_TYPE && code1 == INTEGER_TYPE)
    cmp_type = type0;
  else if (code0 == INTEGER_TYPE && code1 == REAL_TYPE)
    cmp_type = type1;
  else
    {
      FUNC9 ("non-floating-point argument to function %qs",
		 FUNC2 (FUNC0 (fndecl)));
      return error_mark_node;
    }

  arg0 = FUNC12 (cmp_type, arg0);
  arg1 = FUNC12 (cmp_type, arg1);

  if (unordered_code == UNORDERED_EXPR)
    {
      if (!FUNC1 (FUNC7 (FUNC5 (arg0))))
	return FUNC13 (type, integer_zero_node, arg0, arg1);
      return FUNC11 (UNORDERED_EXPR, type, arg0, arg1);
    }

  code = FUNC1 (FUNC7 (FUNC5 (arg0))) ? unordered_code
						   : ordered_code;
  return FUNC10 (TRUTH_NOT_EXPR, type,
		      FUNC11 (code, type, arg0, arg1));
}