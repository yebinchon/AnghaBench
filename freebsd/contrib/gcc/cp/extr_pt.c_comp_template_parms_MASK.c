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

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TREE_VEC ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8 (tree parms1, tree parms2)
{
  tree p1;
  tree p2;

  if (parms1 == parms2)
    return 1;

  for (p1 = parms1, p2 = parms2;
       p1 != NULL_TREE && p2 != NULL_TREE;
       p1 = FUNC0 (p1), p2 = FUNC0 (p2))
    {
      tree t1 = FUNC3 (p1);
      tree t2 = FUNC3 (p2);
      int i;

      FUNC6 (FUNC1 (t1) == TREE_VEC);
      FUNC6 (FUNC1 (t2) == TREE_VEC);

      if (FUNC5 (t1) != FUNC5 (t2))
	return 0;

      for (i = 0; i < FUNC5 (t2); ++i)
	{
          tree parm1 = FUNC3 (FUNC4 (t1, i));
          tree parm2 = FUNC3 (FUNC4 (t2, i));

          /* If either of the template parameters are invalid, assume
             they match for the sake of error recovery. */
          if (parm1 == error_mark_node || parm2 == error_mark_node)
            return 1;

	  if (FUNC1 (parm1) != FUNC1 (parm2))
	    return 0;

	  if (FUNC1 (parm1) == TEMPLATE_TYPE_PARM)
	    continue;
	  else if (!FUNC7 (FUNC2 (parm1), FUNC2 (parm2)))
	    return 0;
	}
    }

  if ((p1 != NULL_TREE) != (p2 != NULL_TREE))
    /* One set of parameters has more parameters lists than the
       other.  */
    return 0;

  return 1;
}