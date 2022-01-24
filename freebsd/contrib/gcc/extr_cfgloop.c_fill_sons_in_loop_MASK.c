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
struct loop {int /*<<< orphan*/  latch; } ;
typedef  int /*<<< orphan*/ * basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct loop const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (const struct loop *loop, basic_block bb,
		   basic_block *tovisit, int *tv)
{
  basic_block son, postpone = NULL;

  tovisit[(*tv)++] = bb;
  for (son = FUNC1 (CDI_DOMINATORS, bb);
       son;
       son = FUNC3 (CDI_DOMINATORS, son))
    {
      if (!FUNC2 (loop, son))
	continue;

      if (FUNC0 (CDI_DOMINATORS, loop->latch, son))
	{
	  postpone = son;
	  continue;
	}
      FUNC4 (loop, son, tovisit, tv);
    }

  if (postpone)
    FUNC4 (loop, postpone, tovisit, tv);
}