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
 scalar_t__ BOOLEAN_TYPE ; 
#define  EQ_EXPR 133 
 scalar_t__ FUNCTION_TYPE ; 
#define  GE_EXPR 132 
#define  GT_EXPR 131 
 scalar_t__ HAVE_canonicalize_funcptr_for_compare ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ INTEGER_TYPE ; 
#define  LE_EXPR 130 
#define  LT_EXPR 129 
#define  NE_EXPR 128 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC13 (enum tree_code code, tree type, tree arg0, tree arg1)
{
  tree arg0_unw = FUNC7 (arg0, NULL_TREE);
  tree arg1_unw;
  tree shorter_type, outer_type;
  tree min, max;
  bool above, below;

  if (arg0_unw == arg0)
    return NULL_TREE;
  shorter_type = FUNC1 (arg0_unw);

#ifdef HAVE_canonicalize_funcptr_for_compare
  /* Disable this optimization if we're casting a function pointer
     type on targets that require function pointer canonicalization.  */
  if (HAVE_canonicalize_funcptr_for_compare
      && TREE_CODE (shorter_type) == POINTER_TYPE
      && TREE_CODE (TREE_TYPE (shorter_type)) == FUNCTION_TYPE)
    return NULL_TREE;
#endif

  if (FUNC2 (FUNC1 (arg0)) <= FUNC2 (shorter_type))
    return NULL_TREE;

  arg1_unw = FUNC7 (arg1, NULL_TREE);

  /* If possible, express the comparison in the shorter mode.  */
  if ((code == EQ_EXPR || code == NE_EXPR
       || FUNC3 (FUNC1 (arg0)) == FUNC3 (shorter_type))
      && (FUNC1 (arg1_unw) == shorter_type
	  || (FUNC2 (shorter_type)
	      >= FUNC2 (FUNC1 (arg1_unw)))
	  || (FUNC0 (arg1_unw) == INTEGER_CST
	      && (FUNC0 (shorter_type) == INTEGER_TYPE
		  || FUNC0 (shorter_type) == BOOLEAN_TYPE)
	      && FUNC8 (arg1_unw, shorter_type))))
    return FUNC4 (code, type, arg0_unw,
		       FUNC5 (shorter_type, arg1_unw));

  if (FUNC0 (arg1_unw) != INTEGER_CST
      || FUNC0 (shorter_type) != INTEGER_TYPE
      || !FUNC8 (arg1_unw, shorter_type))
    return NULL_TREE;

  /* If we are comparing with the integer that does not fit into the range
     of the shorter type, the result is known.  */
  outer_type = FUNC1 (arg1_unw);
  min = FUNC10 (outer_type, shorter_type);
  max = FUNC12 (outer_type, shorter_type);

  above = FUNC9 (FUNC6 (LT_EXPR, type,
						   max, arg1_unw));
  below = FUNC9 (FUNC6 (LT_EXPR, type,
						   arg1_unw, min));

  switch (code)
    {
    case EQ_EXPR:
      if (above || below)
	return FUNC11 (type, integer_zero_node, arg0);
      break;

    case NE_EXPR:
      if (above || below)
	return FUNC11 (type, integer_one_node, arg0);
      break;

    case LT_EXPR:
    case LE_EXPR:
      if (above)
	return FUNC11 (type, integer_one_node, arg0);
      else if (below)
	return FUNC11 (type, integer_zero_node, arg0);

    case GT_EXPR:
    case GE_EXPR:
      if (above)
	return FUNC11 (type, integer_zero_node, arg0);
      else if (below)
	return FUNC11 (type, integer_one_node, arg0);

    default:
      break;
    }

  return NULL_TREE;
}