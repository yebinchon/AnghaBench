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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  basic_block ; 
 int /*<<< orphan*/  bb_in_list ; 
 int /*<<< orphan*/ * cfg_blocks ; 
 int /*<<< orphan*/  executable_blocks ; 
 int /*<<< orphan*/  gc ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/ * interesting_ssa_edges ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/ * varying_ssa_edges ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 (tree, gc, interesting_ssa_edges);
  FUNC0 (tree, gc, varying_ssa_edges);
  FUNC0 (basic_block, heap, cfg_blocks);
  cfg_blocks = NULL;
  FUNC1 (bb_in_list);
  FUNC1 (executable_blocks);
}