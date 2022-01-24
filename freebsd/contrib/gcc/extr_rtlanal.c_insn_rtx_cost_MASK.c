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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC6 (rtx pat)
{
  int i, cost;
  rtx set;

  /* Extract the single set rtx from the instruction pattern.
     We can't use single_set since we only have the pattern.  */
  if (FUNC1 (pat) == SET)
    set = pat;
  else if (FUNC1 (pat) == PARALLEL)
    {
      set = NULL_RTX;
      for (i = 0; i < FUNC4 (pat, 0); i++)
	{
	  rtx x = FUNC3 (pat, 0, i);
	  if (FUNC1 (x) == SET)
	    {
	      if (set)
		return 0;
	      set = x;
	    }
	}
      if (!set)
	return 0;
    }
  else
    return 0;

  cost = FUNC5 (FUNC2 (set), SET);
  return cost > 0 ? cost : FUNC0 (1);
}