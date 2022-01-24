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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ sizetype ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

tree
FUNC12 (tree type, tree mem_ref)
{
  tree addr;
  tree act_elem;
  tree step = FUNC4 (mem_ref), offset = FUNC3 (mem_ref);
  tree sym = FUNC5 (mem_ref), base = FUNC1 (mem_ref);
  tree addr_base = NULL_TREE, addr_off = NULL_TREE;

  if (sym)
    addr_base = FUNC10 (type, FUNC7 (sym, current_function_decl));
  else if (base && FUNC0 (FUNC6 (base)))
    {
      addr_base = FUNC10 (type, base);
      base = NULL_TREE;
    }

  act_elem = FUNC2 (mem_ref);
  if (act_elem)
    {
      if (step)
	act_elem = FUNC9 (MULT_EXPR, sizetype, act_elem, step);
      addr_off = act_elem;
    }

  act_elem = base;
  if (act_elem)
    {
      if (addr_off)
	addr_off = FUNC9 (PLUS_EXPR, sizetype, addr_off, act_elem);
      else
	addr_off = act_elem;
    }

  if (!FUNC11 (offset))
    {
      if (addr_off)
	addr_off = FUNC9 (PLUS_EXPR, sizetype, addr_off, offset);
      else
	addr_off = offset;
    }

  if (addr_off)
    {
      addr = FUNC10 (type, addr_off);
      if (addr_base)
	addr = FUNC9 (PLUS_EXPR, type, addr_base, addr);
    }
  else if (addr_base)
    addr = addr_base;
  else
    addr = FUNC8 (type, 0);

  return addr;
}