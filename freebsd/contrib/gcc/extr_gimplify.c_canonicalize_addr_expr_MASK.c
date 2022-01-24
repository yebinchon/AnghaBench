#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* types_compatible_p ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  ARRAY_REF ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ lang_hooks ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (tree *expr_p)
{
  tree expr = *expr_p;
  tree ctype = FUNC3 (expr);
  tree addr_expr = FUNC2 (expr, 0);
  tree atype = FUNC3 (addr_expr);
  tree dctype, datype, ddatype, otype, obj_expr;

  /* Both cast and addr_expr types should be pointers.  */
  if (!FUNC0 (ctype) || !FUNC0 (atype))
    return;

  /* The addr_expr type should be a pointer to an array.  */
  datype = FUNC3 (atype);
  if (FUNC1 (datype) != ARRAY_TYPE)
    return;

  /* Both cast and addr_expr types should address the same object type.  */
  dctype = FUNC3 (ctype);
  ddatype = FUNC3 (datype);
  if (!lang_hooks.types_compatible_p (ddatype, dctype))
    return;

  /* The addr_expr and the object type should match.  */
  obj_expr = FUNC2 (addr_expr, 0);
  otype = FUNC3 (obj_expr);
  if (!lang_hooks.types_compatible_p (otype, datype))
    return;

  /* The lower bound and element sizes must be constant.  */
  if (!FUNC6 (dctype)
      || FUNC1 (FUNC6 (dctype)) != INTEGER_CST
      || !FUNC4 (datype) || !FUNC5 (FUNC4 (datype))
      || FUNC1 (FUNC5 (FUNC4 (datype))) != INTEGER_CST)
    return;

  /* All checks succeeded.  Build a new node to merge the cast.  */
  *expr_p = FUNC8 (ARRAY_REF, dctype, obj_expr,
		    FUNC5 (FUNC4 (datype)),
		    NULL_TREE, NULL_TREE);
  *expr_p = FUNC7 (ADDR_EXPR, ctype, *expr_p);
}