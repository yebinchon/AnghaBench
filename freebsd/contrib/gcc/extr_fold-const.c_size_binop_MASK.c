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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ INTEGER_TYPE ; 
 int MINUS_EXPR ; 
 int MULT_EXPR ; 
 int PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

tree
FUNC8 (enum tree_code code, tree arg0, tree arg1)
{
  tree type = FUNC1 (arg0);

  if (arg0 == error_mark_node || arg1 == error_mark_node)
    return error_mark_node;

  FUNC4 (FUNC0 (type) == INTEGER_TYPE && FUNC2 (type)
	      && type == FUNC1 (arg1));

  /* Handle the special case of two integer constants faster.  */
  if (FUNC0 (arg0) == INTEGER_CST && FUNC0 (arg1) == INTEGER_CST)
    {
      /* And some specific cases even faster than that.  */
      if (code == PLUS_EXPR && FUNC7 (arg0))
	return arg1;
      else if ((code == MINUS_EXPR || code == PLUS_EXPR)
	       && FUNC7 (arg1))
	return arg0;
      else if (code == MULT_EXPR && FUNC6 (arg0))
	return arg1;

      /* Handle general case of two integer constants.  */
      return FUNC5 (code, arg0, arg1, 0);
    }

  return FUNC3 (code, type, arg0, arg1);
}