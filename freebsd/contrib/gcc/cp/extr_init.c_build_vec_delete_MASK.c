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
typedef  int /*<<< orphan*/  special_function_kind ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  sizetype ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

tree
FUNC14 (tree base, tree maxindex,
    special_function_kind auto_delete_vec, int use_global_delete)
{
  tree type;
  tree rval;
  tree base_init = NULL_TREE;

  type = FUNC3 (base);

  if (FUNC1 (type) == POINTER_TYPE)
    {
      /* Step back one from start of vector, and read dimension.  */
      tree cookie_addr;

      if (FUNC2 (base))
	{
	  base_init = FUNC12 (base);
	  base = FUNC0 (base_init);
	}
      type = FUNC13 (FUNC3 (type));
      cookie_addr = FUNC6 (MINUS_EXPR,
			    FUNC8 (sizetype),
			    base,
			    FUNC4 (sizetype));
      maxindex = FUNC7 (cookie_addr, NULL);
    }
  else if (FUNC1 (type) == ARRAY_TYPE)
    {
      /* Get the total number of things in the array, maxindex is a
	 bad name.  */
      maxindex = FUNC5 (type);
      type = FUNC13 (type);
      base = FUNC9 (ADDR_EXPR, base, 1);
      if (FUNC2 (base))
	{
	  base_init = FUNC12 (base);
	  base = FUNC0 (base_init);
	}
    }
  else
    {
      if (base != error_mark_node)
	FUNC11 ("type to vector delete is neither pointer or array type");
      return error_mark_node;
    }

  rval = FUNC10 (base, maxindex, type, auto_delete_vec,
			     use_global_delete);
  if (base_init)
    rval = FUNC6 (COMPOUND_EXPR, FUNC3 (rval), base_init, rval);

  return rval;
}