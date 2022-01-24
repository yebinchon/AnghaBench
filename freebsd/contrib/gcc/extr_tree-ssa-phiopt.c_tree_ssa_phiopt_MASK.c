#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_30__ {int /*<<< orphan*/  succs; } ;
struct TYPE_29__ {int flags; int /*<<< orphan*/  dest_idx; TYPE_2__* dest; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int EDGE_ABNORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EDGE_FALLTHRU ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 unsigned int NUM_FIXED_BLOCKS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int TODO_cleanup_cfg ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int n_basic_blocks ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC17 (void)
{
  basic_block bb;
  basic_block *bb_order;
  unsigned n, i;
  bool cfgchanged = false;

  /* Search every basic block for COND_EXPR we may be able to optimize.

     We walk the blocks in order that guarantees that a block with
     a single predecessor is processed before the predecessor.
     This ensures that we collapse inner ifs before visiting the
     outer ones, and also that we do not try to visit a removed
     block.  */
  bb_order = FUNC6 ();
  n = n_basic_blocks - NUM_FIXED_BLOCKS;

  for (i = 0; i < n; i++) 
    {
      tree cond_expr;
      tree phi;
      basic_block bb1, bb2;
      edge e1, e2;
      tree arg0, arg1;

      bb = bb_order[i];

      cond_expr = FUNC10 (bb);
      /* Check to see if the last statement is a COND_EXPR.  */
      if (!cond_expr
          || FUNC4 (cond_expr) != COND_EXPR)
        continue;

      e1 = FUNC1 (bb, 0);
      bb1 = e1->dest;
      e2 = FUNC1 (bb, 1);
      bb2 = e2->dest;

      /* We cannot do the optimization on abnormal edges.  */
      if ((e1->flags & EDGE_ABNORMAL) != 0
          || (e2->flags & EDGE_ABNORMAL) != 0)
       continue;

      /* If either bb1's succ or bb2 or bb2's succ is non NULL.  */
      if (FUNC0 (bb1->succs) == 0
          || bb2 == NULL
	  || FUNC0 (bb2->succs) == 0)
        continue;

      /* Find the bb which is the fall through to the other.  */
      if (FUNC1 (bb1, 0)->dest == bb2)
        ;
      else if (FUNC1 (bb2, 0)->dest == bb1)
        {
	  basic_block bb_tmp = bb1;
	  edge e_tmp = e1;
	  bb1 = bb2;
	  bb2 = bb_tmp;
	  e1 = e2;
	  e2 = e_tmp;
	}
      else
        continue;

      e1 = FUNC1 (bb1, 0);

      /* Make sure that bb1 is just a fall through.  */
      if (!FUNC15 (bb1)
	  || (e1->flags & EDGE_FALLTHRU) == 0)
        continue;

      /* Also make sure that bb1 only have one predecessor and that it
	 is bb.  */
      if (!FUNC14 (bb1)
          || FUNC13 (bb1) != bb)
	continue;

      phi = FUNC12 (bb2);

      /* Check to make sure that there is only one PHI node.
         TODO: we could do it with more than one iff the other PHI nodes
	 have the same elements for these two edges.  */
      if (!phi || FUNC3 (phi) != NULL)
	continue;

      arg0 = FUNC2 (phi, e1->dest_idx);
      arg1 = FUNC2 (phi, e2->dest_idx);

      /* Something is wrong if we cannot find the arguments in the PHI
	 node.  */
      FUNC9 (arg0 != NULL && arg1 != NULL);

      /* Do the replacement of conditional if it can be done.  */
      if (FUNC7 (bb, bb1, e1, e2, phi, arg0, arg1))
	cfgchanged = true;
      else if (FUNC16 (bb, bb1, e1, e2, phi, arg0, arg1))
	cfgchanged = true;
      else if (FUNC5 (bb, bb1, e1, e2, phi, arg0, arg1))
	cfgchanged = true;
      else if (FUNC11 (bb, bb1, e1, e2, phi, arg0, arg1))
	cfgchanged = true;
    }

  FUNC8 (bb_order);
  
  /* If the CFG has changed, we should cleanup the CFG. */
  return cfgchanged ? TODO_cleanup_cfg : 0;
}