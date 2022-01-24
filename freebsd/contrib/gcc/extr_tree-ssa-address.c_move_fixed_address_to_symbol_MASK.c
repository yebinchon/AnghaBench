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
struct mem_address {int /*<<< orphan*/  symbol; } ;
struct affine_tree_combination {unsigned int n; int* coefs; int /*<<< orphan*/ * elts; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct affine_tree_combination*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct mem_address *parts,
			      struct affine_tree_combination *addr)
{
  unsigned i;
  tree val = NULL_TREE;

  for (i = 0; i < addr->n; i++)
    {
      if (addr->coefs[i] != 1)
	continue;

      val = addr->elts[i];
      if (FUNC0 (val) == ADDR_EXPR
	  && FUNC3 (FUNC1 (val, 0)))
	break;
    }

  if (i == addr->n)
    return;

  parts->symbol = FUNC1 (val, 0);
  FUNC2 (addr, i);
}