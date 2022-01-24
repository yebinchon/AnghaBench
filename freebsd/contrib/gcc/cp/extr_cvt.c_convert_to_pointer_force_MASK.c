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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MINUS_EXPR ; 
 int PLUS_EXPR ; 
 int POINTER_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ba_unique ; 
 scalar_t__ FUNC4 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC9 (tree type, tree expr)
{
  tree intype = FUNC2 (expr);
  enum tree_code form = FUNC1 (intype);

  if (form == POINTER_TYPE)
    {
      intype = FUNC3 (intype);

      if (FUNC3 (type) != intype
	  && FUNC1 (FUNC2 (type)) == RECORD_TYPE
	  && FUNC0 (FUNC2 (type))
	  && FUNC0 (FUNC2 (intype))
	  && FUNC1 (FUNC2 (intype)) == RECORD_TYPE)
	{
	  enum tree_code code = PLUS_EXPR;
	  tree binfo;

	  binfo = FUNC7 (FUNC2 (intype), FUNC2 (type),
			       ba_unique, NULL);
	  if (!binfo)
	    {
	      binfo = FUNC7 (FUNC2 (type), FUNC2 (intype),
				   ba_unique, NULL);
	      code = MINUS_EXPR;
	    }
	  if (binfo == error_mark_node)
	    return error_mark_node;
	  if (binfo)
	    {
	      expr = FUNC4 (code, expr, binfo, 0);
	      if (expr == error_mark_node)
		 return error_mark_node;
	      /* Add any qualifier conversions.  */
	      if (!FUNC8 (FUNC2 (FUNC2 (expr)),
				FUNC2 (type)))
		expr = FUNC5 (type, expr);
	      return expr;
	    }
	}
    }

  return FUNC6 (type, expr, true);
}