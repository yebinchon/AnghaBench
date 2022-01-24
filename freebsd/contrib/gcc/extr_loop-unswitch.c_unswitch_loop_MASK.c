#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_25__ ;
typedef  struct TYPE_31__   TYPE_24__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct loops {int dummy; } ;
struct loop {TYPE_2__* header; TYPE_2__* latch; int /*<<< orphan*/  inner; } ;
typedef  int /*<<< orphan*/  sbitmap ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_33__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  succs; } ;
struct TYPE_32__ {int flags; TYPE_2__* dest; } ;
struct TYPE_31__ {int /*<<< orphan*/  prev_bb; } ;
struct TYPE_30__ {int flags; int probability; int count; int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  BB_IRREDUCIBLE_LOOP ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int EDGE_IRREDUCIBLE_LOOP ; 
 TYPE_25__* FUNC3 (TYPE_2__*,int) ; 
 TYPE_24__* EXIT_BLOCK_PTR ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct loop*,TYPE_1__*,struct loops*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct loop*) ; 
 int FUNC13 (struct loop*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 TYPE_2__* FUNC15 (TYPE_2__*) ; 
 int FUNC16 (struct loop*,TYPE_2__*) ; 
 TYPE_1__* FUNC17 (struct loop*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC19 (struct loops*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct loops*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 TYPE_1__* FUNC26 (TYPE_2__*) ; 

__attribute__((used)) static struct loop *
FUNC27 (struct loops *loops, struct loop *loop, basic_block unswitch_on,
	       rtx cond, rtx cinsn)
{
  edge entry, latch_edge, true_edge, false_edge, e;
  basic_block switch_bb, unswitch_on_alt;
  struct loop *nloop;
  sbitmap zero_bitmap;
  int irred_flag, prob;
  rtx seq;

  /* Some sanity checking.  */
  FUNC14 (FUNC13 (loop, unswitch_on));
  FUNC14 (FUNC2 (unswitch_on->succs) == 2);
  FUNC14 (FUNC16 (loop, unswitch_on));
  FUNC14 (!loop->inner);
  FUNC14 (FUNC13 (loop, FUNC3 (unswitch_on, 0)->dest));
  FUNC14 (FUNC13 (loop, FUNC3 (unswitch_on, 1)->dest));

  entry = FUNC17 (loop);

  /* Make a copy.  */
  irred_flag = entry->flags & EDGE_IRREDUCIBLE_LOOP;
  entry->flags &= ~EDGE_IRREDUCIBLE_LOOP;
  zero_bitmap = FUNC22 (2);
  FUNC24 (zero_bitmap);
  if (!FUNC10 (loop, entry, loops, 1,
	zero_bitmap, NULL, NULL, NULL, 0))
    {
      FUNC23 (zero_bitmap);
      return NULL;
    }
  FUNC23 (zero_bitmap);
  entry->flags |= irred_flag;

  /* Record the block with condition we unswitch on.  */
  unswitch_on_alt = FUNC15 (unswitch_on);
  true_edge = FUNC1 (unswitch_on_alt);
  false_edge = FUNC4 (unswitch_on);
  latch_edge = FUNC26 (FUNC15 (loop->latch));

  /* Create a block with the condition.  */
  prob = true_edge->probability;
  switch_bb = FUNC9 (EXIT_BLOCK_PTR->prev_bb);
  seq = FUNC8 (FUNC6 (cond, 0), FUNC6 (cond, 1), FUNC5 (cond),
			      FUNC7 (true_edge->dest),
			      prob, cinsn);
  FUNC11 (seq, FUNC0 (switch_bb));
  e = FUNC20 (switch_bb, true_edge->dest, 0);
  e->probability = prob;
  e->count = latch_edge->count * prob / REG_BR_PROB_BASE;
  e = FUNC20 (switch_bb, FUNC4 (unswitch_on)->dest, EDGE_FALLTHRU);
  e->probability = false_edge->probability;
  e->count = latch_edge->count * (false_edge->probability) / REG_BR_PROB_BASE;

  if (irred_flag)
    {
      switch_bb->flags |= BB_IRREDUCIBLE_LOOP;
      FUNC3 (switch_bb, 0)->flags |= EDGE_IRREDUCIBLE_LOOP;
      FUNC3 (switch_bb, 1)->flags |= EDGE_IRREDUCIBLE_LOOP;
    }
  else
    {
      switch_bb->flags &= ~BB_IRREDUCIBLE_LOOP;
      FUNC3 (switch_bb, 0)->flags &= ~EDGE_IRREDUCIBLE_LOOP;
      FUNC3 (switch_bb, 1)->flags &= ~EDGE_IRREDUCIBLE_LOOP;
    }

  /* Loopify from the copy of LOOP body, constructing the new loop.  */
  nloop = FUNC19 (loops, latch_edge,
		   FUNC25 (FUNC15 (loop->header)), switch_bb,
		   FUNC1 (switch_bb), FUNC4 (switch_bb), true);

  /* Remove branches that are now unreachable in new loops.  */
  FUNC21 (loops, true_edge);
  FUNC21 (loops, false_edge);

  /* One of created loops do not have to be subloop of the outer loop now,
     so fix its placement in loop data structure.  */
  FUNC12 (loop);
  FUNC12 (nloop);

  /* Preserve the simple loop preheaders.  */
  FUNC18 (FUNC17 (loop), NULL_RTX);
  FUNC18 (FUNC17 (nloop), NULL_RTX);

  return nloop;
}