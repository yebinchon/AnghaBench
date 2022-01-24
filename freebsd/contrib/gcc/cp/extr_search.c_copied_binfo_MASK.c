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
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

tree
FUNC7 (tree binfo, tree here)
{
  tree result = NULL_TREE;

  if (FUNC3 (binfo))
    {
      tree t;

      for (t = here; FUNC1 (t);
	   t = FUNC1 (t))
	continue;

      result = FUNC5 (FUNC2 (binfo), FUNC2 (t));
    }
  else if (FUNC1 (binfo))
    {
      tree cbinfo;
      tree base_binfo;
      int ix;

      cbinfo = FUNC7 (FUNC1 (binfo), here);
      for (ix = 0; FUNC0 (cbinfo, ix, base_binfo); ix++)
	if (FUNC4 (FUNC2 (base_binfo), FUNC2 (binfo)))
	  {
	    result = base_binfo;
	    break;
	  }
    }
  else
    {
      FUNC6 (FUNC4 (FUNC2 (here), FUNC2 (binfo)));
      result = here;
    }

  FUNC6 (result);
  return result;
}