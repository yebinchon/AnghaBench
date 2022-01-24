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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC7 (tree binfo, tree here)
{
  tree result = NULL;

  if (FUNC5 (FUNC2 (binfo), FUNC2 (here)))
    result = here;
  else if (FUNC3 (binfo))
    result = (FUNC4 (FUNC2 (here))
	      ? FUNC6 (FUNC2 (binfo), FUNC2 (here))
	      : NULL_TREE);
  else if (FUNC1 (binfo))
    {
      tree base_binfos;

      base_binfos = FUNC7 (FUNC1 (binfo), here);
      if (base_binfos)
	{
	  int ix;
	  tree base_binfo;

	  for (ix = 0; (base_binfo = FUNC0 (base_binfos, ix)); ix++)
	    if (FUNC5 (FUNC2 (base_binfo),
				   FUNC2 (binfo)))
	      {
		result = base_binfo;
		break;
	      }
	}
    }

  return result;
}