#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct loop {unsigned int num_nodes; TYPE_1__* latch; struct loop* inner; struct loop* next; } ;
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  TYPE_2__* basic_block ;
struct TYPE_8__ {int back_edge; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 TYPE_2__** FUNC4 (struct loop*) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct loop *first_loop, bitmap tovisit)
{
  struct loop *loop;

  for (loop = first_loop; loop; loop = loop->next)
    {
      edge e;
      basic_block *bbs;
      unsigned i;

      FUNC7 (loop->inner, tovisit);

      /* Do not do this for dummy function loop.  */
      if (FUNC0 (loop->latch->succs) > 0)
	{
	  /* Find current loop back edge and mark it.  */
	  e = FUNC5 (loop);
	  FUNC1 (e)->back_edge = 1;
       }

      bbs = FUNC4 (loop);
      for (i = 0; i < loop->num_nodes; i++)
	FUNC2 (tovisit, bbs[i]->index);
      FUNC3 (bbs);
      FUNC6 (loop, tovisit);
    }
}