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
typedef  enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef  int /*<<< orphan*/ * basic_block ;

/* Variables and functions */
 int /*<<< orphan*/ ** dom_computed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4 (enum cdi_direction dir, basic_block *bbs, int n)
{
  int i, changed = 1;
  basic_block old_dom, new_dom;

  FUNC0 (dom_computed[dir]);

  for (i = 0; i < n; i++)
    FUNC3 (dir, bbs[i], NULL);

  while (changed)
    {
      changed = 0;
      for (i = 0; i < n; i++)
	{
	  old_dom = FUNC1 (dir, bbs[i]);
	  new_dom = FUNC2 (dir, bbs[i]);
	  if (old_dom != new_dom)
	    {
	      changed = 1;
	      FUNC3 (dir, bbs[i], new_dom);
	    }
	}
    }

  for (i = 0; i < n; i++)
    FUNC0 (FUNC1 (dir, bbs[i]));
}