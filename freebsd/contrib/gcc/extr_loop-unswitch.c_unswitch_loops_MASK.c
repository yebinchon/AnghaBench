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
struct loops {int num; struct loop** parray; } ;
struct loop {scalar_t__ inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct loops*,struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct loops*) ; 

void
FUNC4 (struct loops *loops)
{
  int i, num;
  struct loop *loop;

  /* Go through inner loops (only original ones).  */
  num = loops->num;

  for (i = 1; i < num; i++)
    {
      /* Removed loop?  */
      loop = loops->parray[i];
      if (!loop)
	continue;

      if (loop->inner)
	continue;

      FUNC1 (loops, loop, NULL_RTX, 0);
#ifdef ENABLE_CHECKING
      verify_dominators (CDI_DOMINATORS);
      verify_loop_structure (loops);
#endif
    }

  FUNC0 ();
}