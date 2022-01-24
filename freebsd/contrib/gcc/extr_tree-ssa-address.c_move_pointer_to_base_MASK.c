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
struct mem_address {int /*<<< orphan*/  base; } ;
struct affine_tree_combination {unsigned int n; int* coefs; int /*<<< orphan*/ * elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct affine_tree_combination*,unsigned int) ; 

__attribute__((used)) static void
FUNC3 (struct mem_address *parts,
		      struct affine_tree_combination *addr)
{
  unsigned i;
  tree val = NULL_TREE;

  for (i = 0; i < addr->n; i++)
    {
      if (addr->coefs[i] != 1)
	continue;

      val = addr->elts[i];
      if (FUNC0 (FUNC1 (val)))
	break;
    }

  if (i == addr->n)
    return;

  parts->base = val;
  FUNC2 (addr, i);
}