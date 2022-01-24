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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY_REF ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int* fn_b_ctrs ; 
 unsigned int* fn_n_ctrs ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int* prg_n_ctrs ; 
 int /*<<< orphan*/ * tree_ctr_tables ; 

tree
FUNC4 (unsigned counter, unsigned no)
{
  tree gcov_type_node = FUNC3 ();

  FUNC2 (no < fn_n_ctrs[counter] - fn_b_ctrs[counter]);
  no += prg_n_ctrs[counter] + fn_b_ctrs[counter];

  /* "no" here is an array index, scaled to bytes later.  */
  return FUNC0 (ARRAY_REF, gcov_type_node, tree_ctr_tables[counter],
		 FUNC1 (NULL_TREE, no), NULL, NULL);
}