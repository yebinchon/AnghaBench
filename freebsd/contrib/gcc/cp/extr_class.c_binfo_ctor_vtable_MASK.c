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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TREE_BINFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC3 (tree binfo)
{
  tree vt;

  while (1)
    {
      vt = FUNC0 (binfo);
      if (FUNC1 (vt) == TREE_LIST)
	vt = FUNC2 (vt);
      if (FUNC1 (vt) == TREE_BINFO)
	binfo = vt;
      else
	break;
    }

  return vt;
}