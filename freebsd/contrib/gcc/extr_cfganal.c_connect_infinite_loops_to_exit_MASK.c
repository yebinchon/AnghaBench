#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct depth_first_search_dsS {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  EDGE_FAKE ; 
 int /*<<< orphan*/  EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct depth_first_search_dsS*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct depth_first_search_dsS*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct depth_first_search_dsS*) ; 
 int /*<<< orphan*/  FUNC3 (struct depth_first_search_dsS*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (void)
{
  basic_block unvisited_block = EXIT_BLOCK_PTR;
  struct depth_first_search_dsS dfs_ds;

  /* Perform depth-first search in the reverse graph to find nodes
     reachable from the exit block.  */
  FUNC3 (&dfs_ds);
  FUNC0 (&dfs_ds, EXIT_BLOCK_PTR);

  /* Repeatedly add fake edges, updating the unreachable nodes.  */
  while (1)
    {
      unvisited_block = FUNC1 (&dfs_ds,
							  unvisited_block);
      if (!unvisited_block)
	break;

      FUNC4 (unvisited_block, EXIT_BLOCK_PTR, EDGE_FAKE);
      FUNC0 (&dfs_ds, unvisited_block);
    }

  FUNC2 (&dfs_ds);
  return;
}