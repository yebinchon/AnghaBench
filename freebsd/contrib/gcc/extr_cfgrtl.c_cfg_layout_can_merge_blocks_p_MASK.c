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
typedef  scalar_t__ basic_block ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int EDGE_COMPLEX ; 
 scalar_t__ ENTRY_BLOCK_PTR ; 
 scalar_t__ EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC9 (basic_block a, basic_block b)
{
  /* If we are partitioning hot/cold basic blocks, we don't want to
     mess up unconditional or indirect jumps that cross between hot
     and cold sections.

     Basic block partitioning may result in some jumps that appear to
     be optimizable (or blocks that appear to be mergeable), but which really
     must be left untouched (they are required to make it safely across
     partition boundaries).  See  the comments at the top of
     bb-reorder.c:partition_hot_cold_basic_blocks for complete details.  */

  if (FUNC1 (a) != FUNC1 (b))
    return false;

  /* There must be exactly one edge in between the blocks.  */
  return (FUNC8 (a)
	  && FUNC6 (a) == b
	  && FUNC5 (b) == 1
	  && a != b
	  /* Must be simple edge.  */
	  && !(FUNC7 (a)->flags & EDGE_COMPLEX)
	  && a != ENTRY_BLOCK_PTR && b != EXIT_BLOCK_PTR
	  /* If the jump insn has side effects,
	     we can't kill the edge.  */
	  && (!FUNC2 (FUNC0 (a))
	      || (reload_completed
		  ? FUNC4 (FUNC0 (a)) : FUNC3 (FUNC0 (a)))));
}