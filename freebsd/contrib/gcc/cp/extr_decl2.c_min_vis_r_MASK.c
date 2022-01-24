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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int VISIBILITY_ANON ; 

__attribute__((used)) static tree
FUNC5 (tree *tp, int *walk_subtrees, void *data)
{
  int *vis_p = (int *)data;
  if (! FUNC4 (*tp))
    {
      *walk_subtrees = 0;
    }
  else if (FUNC1 (*tp))
    {
      if (!FUNC2 (FUNC3 (*tp)))
	{
	  *vis_p = VISIBILITY_ANON;
	  return *tp;
	}
      else if (FUNC0 (*tp) > *vis_p)
	*vis_p = FUNC0 (*tp);
    }
  return NULL;
}