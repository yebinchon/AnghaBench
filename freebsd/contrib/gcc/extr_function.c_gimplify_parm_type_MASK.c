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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static tree
FUNC6 (tree *tp, int *walk_subtrees, void *data)
{
  tree t = *tp;

  *walk_subtrees = 0;
  if (FUNC2 (t))
    {
      if (FUNC0 (t))
	*walk_subtrees = 1;
      else if (FUNC3 (t) && !FUNC1 (FUNC3 (t))
	       && !FUNC4 (t))
	{
	  FUNC5 (t, (tree *) data);
	  *walk_subtrees = 1;
	}
    }

  return NULL;
}