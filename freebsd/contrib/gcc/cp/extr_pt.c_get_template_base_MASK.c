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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC9 (tree tparms, tree targs, tree parm, tree arg)
{
  tree rval = NULL_TREE;
  tree binfo;

  FUNC6 (FUNC1 (FUNC3 (arg)));

  binfo = FUNC4 (FUNC5 (arg));
  if (!binfo)
    /* The type could not be completed.  */
    return NULL_TREE;

  /* Walk in inheritance graph order.  The search order is not
     important, and this avoids multiple walks of virtual bases.  */
  for (binfo = FUNC2 (binfo); binfo; binfo = FUNC2 (binfo))
    {
      tree r = FUNC8 (tparms, targs, parm, FUNC0 (binfo));

      if (r)
	{
	  /* If there is more than one satisfactory baseclass, then:

	       [temp.deduct.call]

	      If they yield more than one possible deduced A, the type
	      deduction fails.

	     applies.  */
	  if (rval && !FUNC7 (r, rval))
	    return NULL_TREE;

	  rval = r;
	}
    }

  return rval;
}