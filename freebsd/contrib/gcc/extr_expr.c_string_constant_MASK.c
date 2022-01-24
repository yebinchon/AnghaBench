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
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* binds_local_p ) (scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ STRING_CST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 scalar_t__ size_zero_node ; 
 int /*<<< orphan*/  sizetype ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_1__ targetm ; 

tree
FUNC12 (tree arg, tree *ptr_offset)
{
  tree array, offset;
  FUNC2 (arg);

  if (FUNC3 (arg) == ADDR_EXPR)
    {
      if (FUNC3 (FUNC4 (arg, 0)) == STRING_CST)
	{
	  *ptr_offset = size_zero_node;
	  return FUNC4 (arg, 0);
	}
      else if (FUNC3 (FUNC4 (arg, 0)) == VAR_DECL)
	{
	  array = FUNC4 (arg, 0);
	  offset = size_zero_node;
	}
      else if (FUNC3 (FUNC4 (arg, 0)) == ARRAY_REF)
	{
	  array = FUNC4 (FUNC4 (arg, 0), 0);
	  offset = FUNC4 (FUNC4 (arg, 0), 1);
	  if (FUNC3 (array) != STRING_CST
	      && FUNC3 (array) != VAR_DECL)
	    return 0;
	}
      else
	return 0;
    }
  else if (FUNC3 (arg) == PLUS_EXPR)
    {
      tree arg0 = FUNC4 (arg, 0);
      tree arg1 = FUNC4 (arg, 1);

      FUNC2 (arg0);
      FUNC2 (arg1);

      if (FUNC3 (arg0) == ADDR_EXPR
	  && (FUNC3 (FUNC4 (arg0, 0)) == STRING_CST
	      || FUNC3 (FUNC4 (arg0, 0)) == VAR_DECL))
	{
	  array = FUNC4 (arg0, 0);
	  offset = arg1;
	}
      else if (FUNC3 (arg1) == ADDR_EXPR
	       && (FUNC3 (FUNC4 (arg1, 0)) == STRING_CST
		   || FUNC3 (FUNC4 (arg1, 0)) == VAR_DECL))
	{
	  array = FUNC4 (arg1, 0);
	  offset = arg0;
	}
      else
	return 0;
    }
  else
    return 0;

  if (FUNC3 (array) == STRING_CST)
    {
      *ptr_offset = FUNC9 (sizetype, offset);
      return array;
    }
  else if (FUNC3 (array) == VAR_DECL)
    {
      int length;

      /* Variables initialized to string literals can be handled too.  */
      if (FUNC0 (array) == NULL_TREE
	  || FUNC3 (FUNC0 (array)) != STRING_CST)
	return 0;

      /* If they are read-only, non-volatile and bind locally.  */
      if (! FUNC5 (array)
	  || FUNC6 (array)
	  || ! targetm.binds_local_p (array))
	return 0;

      /* Avoid const char foo[4] = "abcde";  */
      if (FUNC1 (array) == NULL_TREE
	  || FUNC3 (FUNC1 (array)) != INTEGER_CST
	  || (length = FUNC7 (FUNC0 (array))) <= 0
	  || FUNC8 (FUNC1 (array), length) < 0)
	return 0;

      /* If variable is bigger than the string literal, OFFSET must be constant
	 and inside of the bounds of the string literal.  */
      offset = FUNC9 (sizetype, offset);
      if (FUNC8 (FUNC1 (array), length) > 0
	  && (! FUNC10 (offset, 1)
	      || FUNC8 (offset, length) >= 0))
	return 0;

      *ptr_offset = offset;
      return FUNC0 (array);
    }

  return 0;
}