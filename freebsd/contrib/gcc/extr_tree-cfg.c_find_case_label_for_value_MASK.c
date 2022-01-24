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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC6 (tree switch_expr, tree val)
{
  tree vec = FUNC2 (switch_expr);
  size_t low, high, n = FUNC4 (vec);
  tree default_case = FUNC3 (vec, n - 1);

  for (low = -1, high = n - 1; high - low > 1; )
    {
      size_t i = (high + low) / 2;
      tree t = FUNC3 (vec, i);
      int cmp;

      /* Cache the result of comparing CASE_LOW and val.  */
      cmp = FUNC5 (FUNC1 (t), val);

      if (cmp > 0)
	high = i;
      else
	low = i;

      if (FUNC0 (t) == NULL)
	{
	  /* A singe-valued case label.  */
	  if (cmp == 0)
	    return t;
	}
      else
	{
	  /* A case range.  We can only handle integer ranges.  */
	  if (cmp <= 0 && FUNC5 (FUNC0 (t), val) >= 0)
	    return t;
	}
    }

  return default_case;
}