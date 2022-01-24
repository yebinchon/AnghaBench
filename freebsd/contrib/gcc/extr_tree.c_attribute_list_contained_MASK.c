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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC8 (tree l1, tree l2)
{
  tree t1, t2;

  /* First check the obvious, maybe the lists are identical.  */
  if (l1 == l2)
    return 1;

  /* Maybe the lists are similar.  */
  for (t1 = l1, t2 = l2;
       t1 != 0 && t2 != 0
        && FUNC3 (t1) == FUNC3 (t2)
        && FUNC4 (t1) == FUNC4 (t2);
       t1 = FUNC1 (t1), t2 = FUNC1 (t2));

  /* Maybe the lists are equal.  */
  if (t1 == 0 && t2 == 0)
    return 1;

  for (; t2 != 0; t2 = FUNC1 (t2))
    {
      tree attr;
      for (attr = FUNC5 (FUNC0 (FUNC3 (t2)), l1);
	   attr != NULL_TREE;
	   attr = FUNC5 (FUNC0 (FUNC3 (t2)),
				    FUNC1 (attr)))
	{
	  if (FUNC4 (t2) != NULL
	      && FUNC2 (FUNC4 (t2)) == TREE_LIST
	      && FUNC4 (attr) != NULL
	      && FUNC2 (FUNC4 (attr)) == TREE_LIST)
	    {
	      if (FUNC7 (FUNC4 (t2),
					 FUNC4 (attr)) == 1)
		break;
	    }
	  else if (FUNC6 (FUNC4 (t2), FUNC4 (attr)) == 1)
	    break;
	}

      if (attr == 0)
	return 0;
    }

  return 1;
}