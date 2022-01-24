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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int LOOKUP_NONVIRTUAL ; 
 int LOOKUP_NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  base_dtor_identifier ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  current_class_ref ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC6 (tree binfo, tree flag)
{
  tree expr;

  if (FUNC1 (FUNC0 (binfo)))
    return;

  /* Call the destructor.  */
  expr = FUNC2 (current_class_ref,
				    base_dtor_identifier,
				    NULL_TREE,
				    binfo,
				    LOOKUP_NORMAL | LOOKUP_NONVIRTUAL);
  if (flag)
    expr = FUNC5 (COND_EXPR, void_type_node,
			FUNC3 (flag),
			expr, integer_zero_node);

  FUNC4 (expr);
}