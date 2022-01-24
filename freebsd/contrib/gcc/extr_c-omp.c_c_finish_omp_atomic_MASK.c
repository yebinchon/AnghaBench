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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  OMP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ SAVE_EXPR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_EXPR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  void_type_node ; 

tree
FUNC15 (enum tree_code code, tree lhs, tree rhs)
{
  tree x, type, addr;

  if (lhs == error_mark_node || rhs == error_mark_node)
    return error_mark_node;

  /* ??? According to one reading of the OpenMP spec, complex type are
     supported, but there are no atomic stores for any architecture.
     But at least icc 9.0 doesn't support complex types here either.
     And lets not even talk about vector types...  */
  type = FUNC5 (lhs);
  if (!FUNC0 (type)
      && !FUNC1 (type)
      && !FUNC2 (type))
    {
      FUNC12 ("invalid expression type for %<#pragma omp atomic%>");
      return error_mark_node;
    }

  /* ??? Validate that rhs does not overlap lhs.  */

  /* Take and save the address of the lhs.  From then on we'll reference it
     via indirection.  */
  addr = FUNC10 (ADDR_EXPR, lhs, 0);
  if (addr == error_mark_node)
    return error_mark_node;
  addr = FUNC14 (addr);
  if (FUNC3 (addr) != SAVE_EXPR
      && (FUNC3 (addr) != ADDR_EXPR
	  || FUNC3 (FUNC4 (addr, 0)) != VAR_DECL))
    {
      /* Make sure LHS is simple enough so that goa_lhs_expr_p can recognize
	 it even after unsharing function body.  */
      tree var = FUNC11 (FUNC5 (addr), NULL);
      addr = FUNC7 (TARGET_EXPR, FUNC5 (addr), var, addr, NULL, NULL);
    }
  lhs = FUNC8 (addr, NULL);

  /* There are lots of warnings, errors, and conversions that need to happen
     in the course of interpreting a statement.  Use the normal mechanisms
     to do this, and then take it apart again.  */
  x = FUNC9 (lhs, code, rhs);
  if (x == error_mark_node)
    return error_mark_node;
  FUNC13 (FUNC3 (x) == MODIFY_EXPR);  
  rhs = FUNC4 (x, 1);

  /* Punt the actual generation of atomic operations to common code.  */
  return FUNC6 (OMP_ATOMIC, void_type_node, addr, rhs);
}