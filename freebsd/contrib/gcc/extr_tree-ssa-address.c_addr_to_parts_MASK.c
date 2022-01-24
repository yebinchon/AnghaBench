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
struct mem_address {void* symbol; void* offset; void* step; void* index; void* base; } ;
struct affine_tree_combination {int offset; unsigned int n; int* coefs; scalar_t__ rest; scalar_t__* elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MULT_EXPR ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (struct mem_address*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_address*,struct affine_tree_combination*) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_address*,struct affine_tree_combination*) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_address*,struct affine_tree_combination*) ; 
 int /*<<< orphan*/  sizetype ; 

__attribute__((used)) static void
FUNC7 (struct affine_tree_combination *addr, struct mem_address *parts)
{
  unsigned i;
  tree part;

  parts->symbol = NULL_TREE;
  parts->base = NULL_TREE;
  parts->index = NULL_TREE;
  parts->step = NULL_TREE;

  if (addr->offset)
    parts->offset = FUNC1 (sizetype, addr->offset);
  else
    parts->offset = NULL_TREE;

  /* Try to find a symbol.  */
  FUNC5 (parts, addr);

  /* First move the most expensive feasible multiplication
     to index.  */
  FUNC4 (parts, addr);

  /* Try to find a base of the reference.  Since at the moment
     there is no reliable way how to distinguish between pointer and its
     offset, this is just a guess.  */
  if (!parts->symbol)
    FUNC6 (parts, addr);

  /* Then try to process the remaining elements.  */
  for (i = 0; i < addr->n; i++)
    {
      part = FUNC3 (sizetype, addr->elts[i]);
      if (addr->coefs[i] != 1)
	part = FUNC2 (MULT_EXPR, sizetype, part,
			    FUNC1 (sizetype, addr->coefs[i]));
      FUNC0 (parts, part);
    }
  if (addr->rest)
    FUNC0 (parts, FUNC3 (sizetype, addr->rest));
}