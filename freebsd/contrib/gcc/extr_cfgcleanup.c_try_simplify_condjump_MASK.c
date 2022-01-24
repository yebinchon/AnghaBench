#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_25__ {scalar_t__ next_bb; int /*<<< orphan*/  succs; } ;
struct TYPE_24__ {int flags; TYPE_2__* dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int EDGE_CROSSING ; 
 int EDGE_FALLTHRU ; 
 scalar_t__ EXIT_BLOCK_PTR ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC19 (basic_block cbranch_block)
{
  basic_block jump_block, jump_dest_block, cbranch_dest_block;
  edge cbranch_jump_edge, cbranch_fallthru_edge;
  rtx cbranch_insn;

  /* Verify that there are exactly two successors.  */
  if (FUNC3 (cbranch_block->succs) != 2)
    return false;

  /* Verify that we've got a normal conditional branch at the end
     of the block.  */
  cbranch_insn = FUNC0 (cbranch_block);
  if (!FUNC7 (cbranch_insn))
    return false;

  cbranch_fallthru_edge = FUNC4 (cbranch_block);
  cbranch_jump_edge = FUNC2 (cbranch_block);

  /* The next block must not have multiple predecessors, must not
     be the last block in the function, and must contain just the
     unconditional jump.  */
  jump_block = cbranch_fallthru_edge->dest;
  if (!FUNC14 (jump_block)
      || jump_block->next_bb == EXIT_BLOCK_PTR
      || !FUNC5 (jump_block))
    return false;
  jump_dest_block = FUNC15 (jump_block);

  /* If we are partitioning hot/cold basic blocks, we don't want to
     mess up unconditional or indirect jumps that cross between hot
     and cold sections.

     Basic block partitioning may result in some jumps that appear to
     be optimizable (or blocks that appear to be mergeable), but which really
     must be left untouched (they are required to make it safely across
     partition boundaries).  See the comments at the top of
     bb-reorder.c:partition_hot_cold_basic_blocks for complete details.  */

  if (FUNC1 (jump_block) != FUNC1 (jump_dest_block)
      || (cbranch_jump_edge->flags & EDGE_CROSSING))
    return false;

  /* The conditional branch must target the block after the
     unconditional branch.  */
  cbranch_dest_block = cbranch_jump_edge->dest;

  if (cbranch_dest_block == EXIT_BLOCK_PTR
      || !FUNC9 (jump_block, cbranch_dest_block))
    return false;

  /* Invert the conditional branch.  */
  if (!FUNC12 (cbranch_insn, FUNC8 (jump_dest_block), 0))
    return false;

  if (dump_file)
    FUNC11 (dump_file, "Simplifying condjump %i around jump %i\n",
	     FUNC6 (cbranch_insn), FUNC6 (FUNC0 (jump_block)));

  /* Success.  Update the CFG to match.  Note that after this point
     the edge variable names appear backwards; the redirection is done
     this way to preserve edge profile data.  */
  cbranch_jump_edge = FUNC13 (cbranch_jump_edge,
						cbranch_dest_block);
  cbranch_fallthru_edge = FUNC13 (cbranch_fallthru_edge,
						    jump_dest_block);
  cbranch_jump_edge->flags |= EDGE_FALLTHRU;
  cbranch_fallthru_edge->flags &= ~EDGE_FALLTHRU;
  FUNC17 (cbranch_block);

  /* Delete the block with the unconditional jump, and clean up the mess.  */
  FUNC10 (jump_block);
  FUNC16 (cbranch_jump_edge);
  FUNC18 (cbranch_block);

  return true;
}