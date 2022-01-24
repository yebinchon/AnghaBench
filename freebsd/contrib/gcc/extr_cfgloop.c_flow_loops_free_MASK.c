#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct loop** rc_order; struct loop** dfs_order; } ;
struct loops {unsigned int num; TYPE_1__ cfg; struct loop** parray; } ;
struct loop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (struct loop**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void
FUNC3 (struct loops *loops)
{
  if (loops->parray)
    {
      unsigned i;

      FUNC2 (loops->num);

      /* Free the loop descriptors.  */
      for (i = 0; i < loops->num; i++)
	{
	  struct loop *loop = loops->parray[i];

	  if (!loop)
	    continue;

	  FUNC0 (loop);
	}

      FUNC1 (loops->parray);
      loops->parray = NULL;

      if (loops->cfg.dfs_order)
	FUNC1 (loops->cfg.dfs_order);
      if (loops->cfg.rc_order)
	FUNC1 (loops->cfg.rc_order);

    }
}