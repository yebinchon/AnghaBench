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
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  find_single_pointer_decl_1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC1 (tree t)
{
  tree decl = NULL_TREE;

  if (FUNC0 (&t, find_single_pointer_decl_1, &decl, NULL))
    {
      /* find_single_pointer_decl_1 returns a nonzero value, causing
	 walk_tree to return a nonzero value, to indicate that it
	 found more than one pointer DECL.  */
      return NULL_TREE;
    }

  return decl;
}