#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_3__* edge ;
typedef  TYPE_4__* basic_block ;
struct TYPE_22__ {TYPE_1__* rtl; } ;
struct TYPE_24__ {scalar_t__ index; TYPE_2__ il; } ;
struct TYPE_23__ {int flags; TYPE_4__* dest; } ;
struct TYPE_21__ {int /*<<< orphan*/  global_live_at_end; int /*<<< orphan*/  global_live_at_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  BRANCH_COST ; 
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EDGE_COMPLEX ; 
 int FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ NUM_FIXED_BLOCKS ; 
 int /*<<< orphan*/  REG_BR_PROB ; 
 int REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  REG_CROSSING_JUMP ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  num_possible_if_blocks ; 
 int /*<<< orphan*/  num_true_changes ; 
 int /*<<< orphan*/  num_updated_if_blocks ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_3__* FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC14 (basic_block test_bb, edge then_edge, edge else_edge)
{
  basic_block then_bb = then_edge->dest;
  basic_block else_bb = else_edge->dest;
  edge else_succ;
  rtx note;

  /* If we are partitioning hot/cold basic blocks, we don't want to
     mess up unconditional or indirect jumps that cross between hot
     and cold sections.
  
     Basic block partitioning may result in some jumps that appear to
     be optimizable (or blocks that appear to be mergeable), but which really 
     must be left untouched (they are required to make it safely across 
     partition boundaries).  See  the comments at the top of 
     bb-reorder.c:partition_hot_cold_basic_blocks for complete details.  */

  if ((FUNC0 (then_bb)
       && FUNC9 (FUNC0 (then_bb), REG_CROSSING_JUMP, NULL_RTX))
      || (FUNC0 (test_bb)
	  && FUNC9 (FUNC0 (test_bb), REG_CROSSING_JUMP, NULL_RTX))
      || (FUNC0 (else_bb) 
	  && FUNC9 (FUNC0 (else_bb), REG_CROSSING_JUMP, 
			    NULL_RTX)))
    return FALSE;

  /* ELSE has one successor.  */
  if (!FUNC13 (else_bb))
    return FALSE;
  else
    else_succ = FUNC12 (else_bb);

  /* ELSE outgoing edge is not complex.  */
  if (else_succ->flags & EDGE_COMPLEX)
    return FALSE;

  /* ELSE has one predecessor.  */
  if (!FUNC11 (else_bb))
    return FALSE;

  /* THEN is not EXIT.  */
  if (then_bb->index < NUM_FIXED_BLOCKS)
    return FALSE;

  /* ELSE is predicted or SUCC(ELSE) postdominates THEN.  */
  note = FUNC9 (FUNC0 (test_bb), REG_BR_PROB, NULL_RTX);
  if (note && FUNC2 (FUNC3 (note, 0)) >= REG_BR_PROB_BASE / 2)
    ;
  else if (else_succ->dest->index < NUM_FIXED_BLOCKS
	   || FUNC8 (CDI_POST_DOMINATORS, then_bb,
			      else_succ->dest))
    ;
  else
    return FALSE;

  num_possible_if_blocks++;
  if (dump_file)
    FUNC10 (dump_file,
	     "\nIF-CASE-2 found, start %ld, else %ld\n",
	     test_bb->index, else_bb->index);

  /* ELSE is small.  */
  if (! FUNC5 (else_bb, FUNC1 (BRANCH_COST)))
    return FALSE;

  /* Registers set are dead, or are predicable.  */
  if (! FUNC6 (test_bb, else_bb, then_bb, else_succ->dest, 0))
    return FALSE;

  /* Conversion went ok, including moving the insns and fixing up the
     jump.  Adjust the CFG to match.  */

  FUNC4 (test_bb->il.rtl->global_live_at_end,
	      then_bb->il.rtl->global_live_at_start,
	      else_bb->il.rtl->global_live_at_end);

  FUNC7 (else_bb);

  num_true_changes++;
  num_updated_if_blocks++;

  /* ??? We may now fallthru from one of THEN's successors into a join
     block.  Rerun cleanup_cfg?  Examine things manually?  Wait?  */

  return TRUE;
}