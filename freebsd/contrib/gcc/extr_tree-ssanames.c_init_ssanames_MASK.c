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
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * free_ssanames ; 
 int /*<<< orphan*/  gc ; 
 int /*<<< orphan*/  ssa_names ; 
 int /*<<< orphan*/  tree ; 

void
FUNC2 (void)
{
  ssa_names = FUNC0 (tree, gc, 50);

  /* Version 0 is special, so reserve the first slot in the table.  Though
     currently unused, we may use version 0 in alias analysis as part of
     the heuristics used to group aliases when the alias sets are too
     large.

     We use VEC_quick_push here because we know that SSA_NAMES has at
     least 50 elements reserved in it.  */
  FUNC1 (tree, ssa_names, NULL_TREE);
  free_ssanames = NULL;
}