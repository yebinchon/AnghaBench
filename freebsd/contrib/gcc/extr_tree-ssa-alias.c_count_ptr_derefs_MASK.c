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
struct count_ptr_d {scalar_t__ ptr; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC3 (tree *tp, int *walk_subtrees, void *data)
{
  struct count_ptr_d *count_p = (struct count_ptr_d *) data;

  /* Do not walk inside ADDR_EXPR nodes.  In the expression &ptr->fld,
     pointer 'ptr' is *not* dereferenced, it is simply used to compute
     the address of 'fld' as 'ptr + offsetof(fld)'.  */
  if (FUNC1 (*tp) == ADDR_EXPR)
    {
      *walk_subtrees = 0;
      return NULL_TREE;
    }

  if (FUNC0 (*tp) && FUNC2 (*tp, 0) == count_p->ptr)
    count_p->count++;

  return NULL_TREE;
}