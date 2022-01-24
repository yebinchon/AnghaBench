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
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;

/* Variables and functions */
 int /*<<< orphan*/  COND_EXPR ; 
 int GS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boolean_false_node ; 
 int /*<<< orphan*/  boolean_true_node ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum gimplify_status
FUNC3 (tree *expr_p)
{
  /* Preserve the original type of the expression.  */
  tree type = FUNC0 (*expr_p);

  *expr_p = FUNC1 (COND_EXPR, type, *expr_p,
		    FUNC2 (type, boolean_true_node),
		    FUNC2 (type, boolean_false_node));

  return GS_OK;
}