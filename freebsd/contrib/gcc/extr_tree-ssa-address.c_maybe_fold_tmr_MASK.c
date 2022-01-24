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
typedef  void* tree ;
struct mem_address {void* base; void* offset; void* index; void* step; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct mem_address*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct mem_address*) ; 
 int /*<<< orphan*/  sizetype ; 

tree
FUNC7 (tree ref)
{
  struct mem_address addr;
  bool changed = false;
  tree ret, off;

  FUNC6 (ref, &addr);

  if (addr.base && FUNC0 (addr.base) == INTEGER_CST)
    {
      if (addr.offset)
	addr.offset = FUNC4 (PLUS_EXPR, sizetype,
			addr.offset,
			FUNC5 (sizetype, addr.base));
      else
	addr.offset = addr.base;

      addr.base = NULL_TREE;
      changed = true;
    }

  if (addr.index && FUNC0 (addr.index) == INTEGER_CST)
    {
      off = addr.index;
      if (addr.step)
	{
	  off = FUNC4 (MULT_EXPR, sizetype,
					 off, addr.step);
	  addr.step = NULL_TREE;
	}

      if (addr.offset)
	{
	  addr.offset = FUNC4 (PLUS_EXPR, sizetype,
						 addr.offset, off);
	}
      else
	addr.offset = off;

      addr.index = NULL_TREE;
      changed = true;
    }

  if (!changed)
    return NULL_TREE;
  
  ret = FUNC3 (FUNC1 (ref), &addr);
  if (!ret)
    return NULL_TREE;

  FUNC2 (ret, ref);
  return ret;
}