#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
struct TYPE_2__ {int /*<<< orphan*/  (* resolve_overloaded_builtin ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  BUILT_IN_ADD_AND_FETCH_N 145 
#define  BUILT_IN_AND_AND_FETCH_N 144 
#define  BUILT_IN_BOOL_COMPARE_AND_SWAP_N 143 
#define  BUILT_IN_FETCH_AND_ADD_N 142 
#define  BUILT_IN_FETCH_AND_AND_N 141 
#define  BUILT_IN_FETCH_AND_NAND_N 140 
#define  BUILT_IN_FETCH_AND_OR_N 139 
#define  BUILT_IN_FETCH_AND_SUB_N 138 
#define  BUILT_IN_FETCH_AND_XOR_N 137 
#define  BUILT_IN_LOCK_RELEASE_N 136 
#define  BUILT_IN_LOCK_TEST_AND_SET_N 135 
#define  BUILT_IN_MD 134 
#define  BUILT_IN_NAND_AND_FETCH_N 133 
#define  BUILT_IN_NORMAL 132 
#define  BUILT_IN_OR_AND_FETCH_N 131 
#define  BUILT_IN_SUB_AND_FETCH_N 130 
#define  BUILT_IN_VAL_COMPARE_AND_SWAP_N 129 
#define  BUILT_IN_XOR_AND_FETCH_N 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * built_in_decls ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ targetm ; 

tree
FUNC8 (tree function, tree params)
{
  enum built_in_function orig_code = FUNC1 (function);
  switch (FUNC0 (function))
    {
    case BUILT_IN_NORMAL:
      break;
    case BUILT_IN_MD:
      if (targetm.resolve_overloaded_builtin)
	return targetm.resolve_overloaded_builtin (function, params);
      else
	return NULL_TREE;
    default:
      return NULL_TREE;
    }

  /* Handle BUILT_IN_NORMAL here.  */
  switch (orig_code)
    {
    case BUILT_IN_FETCH_AND_ADD_N:
    case BUILT_IN_FETCH_AND_SUB_N:
    case BUILT_IN_FETCH_AND_OR_N:
    case BUILT_IN_FETCH_AND_AND_N:
    case BUILT_IN_FETCH_AND_XOR_N:
    case BUILT_IN_FETCH_AND_NAND_N:
    case BUILT_IN_ADD_AND_FETCH_N:
    case BUILT_IN_SUB_AND_FETCH_N:
    case BUILT_IN_OR_AND_FETCH_N:
    case BUILT_IN_AND_AND_FETCH_N:
    case BUILT_IN_XOR_AND_FETCH_N:
    case BUILT_IN_NAND_AND_FETCH_N:
    case BUILT_IN_BOOL_COMPARE_AND_SWAP_N:
    case BUILT_IN_VAL_COMPARE_AND_SWAP_N:
    case BUILT_IN_LOCK_TEST_AND_SET_N:
    case BUILT_IN_LOCK_RELEASE_N:
      {
	int n = FUNC7 (function, params);
	tree new_function, result;

	if (n == 0)
	  return error_mark_node;

	new_function = built_in_decls[orig_code + FUNC3 (n) + 1];
	if (!FUNC5 (function, new_function, params))
	  return error_mark_node;

	result = FUNC2 (new_function, params);
	if (orig_code != BUILT_IN_BOOL_COMPARE_AND_SWAP_N
	    && orig_code != BUILT_IN_LOCK_RELEASE_N)
	  result = FUNC6 (params, result);

	return result;
      }

    default:
      return NULL_TREE;
    }
}