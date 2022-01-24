#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct loops {int dummy; } ;
struct loop {unsigned int num_nodes; TYPE_2__* latch; TYPE_1__* single_exit; TYPE_2__* header; scalar_t__ inner; } ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_35__ {int flags; } ;
struct TYPE_34__ {int /*<<< orphan*/  flags; } ;
struct TYPE_33__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  BB_IRREDUCIBLE_LOOP ; 
 int EDGE_IRREDUCIBLE_LOOP ; 
 int /*<<< orphan*/  FUNC0 (struct loop*,TYPE_1__*,struct loops*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__**,TYPE_1__**) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 TYPE_2__** FUNC5 (struct loop*) ; 
 TYPE_1__* FUNC6 (struct loop*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct loop* FUNC8 (struct loops*,TYPE_1__*,TYPE_5__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_2__* FUNC9 (TYPE_2__*,TYPE_2__*,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_5__* FUNC12 (TYPE_2__*) ; 
 TYPE_1__* FUNC13 (TYPE_2__*) ; 

struct loop *
FUNC14 (struct loops *loops, struct loop * loop,
	      void *cond_expr, basic_block *condition_bb,
	      bool place_after)
{
  basic_block first_head, second_head;
  edge entry, latch_edge, exit, true_edge, false_edge;
  int irred_flag;
  struct loop *nloop;
  basic_block cond_bb;

  /* CHECKME: Loop versioning does not handle nested loop at this point.  */
  if (loop->inner)
    return NULL;

  /* Record entry and latch edges for the loop */
  entry = FUNC6 (loop);
  irred_flag = entry->flags & EDGE_IRREDUCIBLE_LOOP;
  entry->flags &= ~EDGE_IRREDUCIBLE_LOOP;

  /* Note down head of loop as first_head.  */
  first_head = entry->dest;

  /* Duplicate loop.  */
  if (!FUNC0 (loop, entry, loops, 1,
					       NULL, NULL, NULL, NULL, 0))
    return NULL;

  /* After duplication entry edge now points to new loop head block.
     Note down new head as second_head.  */
  second_head = entry->dest;

  /* Split loop entry edge and insert new block with cond expr.  */
  cond_bb =  FUNC9 (first_head, second_head,
					entry, cond_expr);
  if (condition_bb)
    *condition_bb = cond_bb;

  if (!cond_bb)
    {
      entry->flags |= irred_flag;
      return NULL;
    }

  latch_edge = FUNC13 (FUNC4 (loop->latch));

  FUNC1 (cond_bb, &true_edge, &false_edge);
  nloop = FUNC8 (loops,
		   latch_edge,
		   FUNC12 (FUNC4 (loop->header)),
		   cond_bb, true_edge, false_edge,
		   false /* Do not redirect all edges.  */);

  exit = loop->single_exit;
  if (exit)
    nloop->single_exit = FUNC2 (FUNC4 (exit->src), exit->dest);

  /* loopify redirected latch_edge. Update its PENDING_STMTS.  */
  FUNC10 (latch_edge);

  /* loopify redirected condition_bb's succ edge. Update its PENDING_STMTS.  */
  FUNC1 (cond_bb, &true_edge, &false_edge);
  FUNC10 (false_edge);
  /* Adjust irreducible flag.  */
  if (irred_flag)
    {
      cond_bb->flags |= BB_IRREDUCIBLE_LOOP;
      FUNC6 (loop)->flags |= EDGE_IRREDUCIBLE_LOOP;
      FUNC6 (nloop)->flags |= EDGE_IRREDUCIBLE_LOOP;
      FUNC12 (cond_bb)->flags |= EDGE_IRREDUCIBLE_LOOP;
    }

  if (place_after)
    {
      basic_block *bbs = FUNC5 (nloop), after;
      unsigned i;

      after = loop->latch;

      for (i = 0; i < nloop->num_nodes; i++)
	{
	  FUNC11 (bbs[i], after);
	  after = bbs[i];
	}
      FUNC3 (bbs);
    }

  /* At this point condition_bb is loop predheader with two successors,
     first_head and second_head.   Make sure that loop predheader has only
     one successor.  */
  FUNC7 (FUNC6 (loop), NULL);
  FUNC7 (FUNC6 (nloop), NULL);

  return nloop;
}