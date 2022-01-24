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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static bool
FUNC4 (tree expr, tree addr)
{
  /* Also include casts to other type variants.  The C front end is fond
     of adding these for e.g. volatile variables.  This is like 
     STRIP_TYPE_NOPS but includes the main variant lookup.  */
  while ((FUNC0 (expr) == NOP_EXPR
          || FUNC0 (expr) == CONVERT_EXPR
          || FUNC0 (expr) == NON_LVALUE_EXPR)
         && FUNC1 (expr, 0) != error_mark_node
         && (FUNC3 (FUNC2 (expr))
             == FUNC3 (FUNC2 (FUNC1 (expr, 0)))))
    expr = FUNC1 (expr, 0);

  if (FUNC0 (expr) == INDIRECT_REF && FUNC1 (expr, 0) == addr)
    return true;
  if (FUNC0 (addr) == ADDR_EXPR && expr == FUNC1 (addr, 0))
    return true;
  return false;
}