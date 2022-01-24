#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_12__ {int flags; TYPE_2__* dest; scalar_t__ count; void* probability; } ;
struct TYPE_11__ {int index; } ;
struct TYPE_10__ {int /*<<< orphan*/  dest_idx; } ;

/* Variables and functions */
 int EDGE_FALLTHRU ; 
 int EDGE_FALSE_VALUE ; 
 TYPE_8__* FUNC0 (TYPE_2__*,int) ; 
 int EDGE_TRUE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TDF_DETAILS ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int,int) ; 

__attribute__((used)) static void
FUNC8 (basic_block cond_block,
				edge e, tree phi, tree new)
{
  basic_block bb = FUNC3 (phi);
  basic_block block_to_remove;
  block_stmt_iterator bsi;

  /* Change the PHI argument to new.  */
  FUNC2 (FUNC1 (phi, e->dest_idx), new);

  /* Remove the empty basic block.  */
  if (FUNC0 (cond_block, 0)->dest == bb)
    {
      FUNC0 (cond_block, 0)->flags |= EDGE_FALLTHRU;
      FUNC0 (cond_block, 0)->flags &= ~(EDGE_TRUE_VALUE | EDGE_FALSE_VALUE);
      FUNC0 (cond_block, 0)->probability = REG_BR_PROB_BASE;
      FUNC0 (cond_block, 0)->count += FUNC0 (cond_block, 1)->count;

      block_to_remove = FUNC0 (cond_block, 1)->dest;
    }
  else
    {
      FUNC0 (cond_block, 1)->flags |= EDGE_FALLTHRU;
      FUNC0 (cond_block, 1)->flags
	&= ~(EDGE_TRUE_VALUE | EDGE_FALSE_VALUE);
      FUNC0 (cond_block, 1)->probability = REG_BR_PROB_BASE;
      FUNC0 (cond_block, 1)->count += FUNC0 (cond_block, 0)->count;

      block_to_remove = FUNC0 (cond_block, 0)->dest;
    }
  FUNC6 (block_to_remove);

  /* Eliminate the COND_EXPR at the end of COND_BLOCK.  */
  bsi = FUNC4 (cond_block);
  FUNC5 (&bsi, true);

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC7 (dump_file,
	      "COND_EXPR in block %d and PHI in block %d converted to straightline code.\n",
	      cond_block->index,
	      bb->index);
}