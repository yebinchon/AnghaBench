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
 scalar_t__ CONVERT_EXPR ; 
 int EQ_EXPR ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ HAVE_canonicalize_funcptr_for_compare ; 
 scalar_t__ INTEGER_CST ; 
 int NE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC13 (enum tree_code code, tree type,
			      tree arg0, tree arg1)
{
  tree arg0_inner, tmp;
  tree inner_type, outer_type;

  if (FUNC0 (arg0) != NOP_EXPR
      && FUNC0 (arg0) != CONVERT_EXPR)
    return NULL_TREE;

  outer_type = FUNC6 (arg0);
  arg0_inner = FUNC4 (arg0, 0);
  inner_type = FUNC6 (arg0_inner);

#ifdef HAVE_canonicalize_funcptr_for_compare
  /* Disable this optimization if we're casting a function pointer
     type on targets that require function pointer canonicalization.  */
  if (HAVE_canonicalize_funcptr_for_compare
      && TREE_CODE (inner_type) == POINTER_TYPE
      && TREE_CODE (TREE_TYPE (inner_type)) == FUNCTION_TYPE)
    return NULL_TREE;
#endif

  if (FUNC7 (inner_type) != FUNC7 (outer_type))
    return NULL_TREE;

  if (FUNC0 (arg1) != INTEGER_CST
      && !((FUNC0 (arg1) == NOP_EXPR
	    || FUNC0 (arg1) == CONVERT_EXPR)
	   && FUNC6 (FUNC4 (arg1, 0)) == inner_type))
    return NULL_TREE;

  if (FUNC8 (inner_type) != FUNC8 (outer_type)
      && code != NE_EXPR
      && code != EQ_EXPR)
    return NULL_TREE;

  if (FUNC0 (arg1) == INTEGER_CST)
    {
      tmp = FUNC9 (inner_type,
				FUNC3 (arg1),
				FUNC2 (arg1));
      arg1 = FUNC12 (tmp, 0,
			     FUNC5 (arg1),
			     FUNC1 (arg1));
    }
  else
    arg1 = FUNC11 (inner_type, arg1);

  return FUNC10 (code, type, arg0_inner, arg1);
}