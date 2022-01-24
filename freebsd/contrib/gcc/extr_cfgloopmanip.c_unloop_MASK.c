#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct loops {int /*<<< orphan*/ ** parray; } ;
struct loop {unsigned int num_nodes; size_t num; int /*<<< orphan*/  outer; struct loop* inner; TYPE_1__* latch; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {struct loop* loop_father; } ;

/* Variables and functions */
 int EDGE_IRREDUCIBLE_LOOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct loops*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct loop*) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 TYPE_1__** FUNC6 (struct loop*) ; 
 TYPE_4__* FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11 (struct loops *loops, struct loop *loop, bool *irred_invalidated)
{
  basic_block *body;
  struct loop *ploop;
  unsigned i, n;
  basic_block latch = loop->latch;
  bool dummy = false;

  if (FUNC7 (loop)->flags & EDGE_IRREDUCIBLE_LOOP)
    *irred_invalidated = true;

  /* This is relatively straightforward.  The dominators are unchanged, as
     loop header dominates loop latch, so the only thing we have to care of
     is the placement of loops and basic blocks inside the loop tree.  We
     move them all to the loop->outer, and then let fix_bb_placements do
     its work.  */

  body = FUNC6 (loop);
  n = loop->num_nodes;
  for (i = 0; i < n; i++)
    if (body[i]->loop_father == loop)
      {
	FUNC8 (body[i]);
	FUNC0 (body[i], loop->outer);
      }
  FUNC5(body);

  while (loop->inner)
    {
      ploop = loop->inner;
      FUNC4 (ploop);
      FUNC3 (loop->outer, ploop);
    }

  /* Remove the loop and free its data.  */
  FUNC4 (loop);
  loops->parray[loop->num] = NULL;
  FUNC2 (loop);

  FUNC9 (FUNC10 (latch));

  /* We do not pass IRRED_INVALIDATED to fix_bb_placements here, as even if
     there is an irreducible region inside the cancelled loop, the flags will
     be still correct.  */
  FUNC1 (loops, latch, &dummy);
}