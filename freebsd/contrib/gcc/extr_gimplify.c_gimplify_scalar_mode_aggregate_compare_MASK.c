#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_3__ {int /*<<< orphan*/  (* type_for_mode ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int GS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIEW_CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum gimplify_status
FUNC7 (tree *expr_p)
{
  tree op0 = FUNC1 (*expr_p, 0);
  tree op1 = FUNC1 (*expr_p, 1);

  tree type = FUNC2 (op0);
  tree scalar_type = lang_hooks.types.type_for_mode (FUNC3 (type), 1);

  op0 = FUNC4 (VIEW_CONVERT_EXPR, scalar_type, op0);
  op1 = FUNC4 (VIEW_CONVERT_EXPR, scalar_type, op1);

  *expr_p
    = FUNC5 (FUNC0 (*expr_p), FUNC2 (*expr_p), op0, op1);

  return GS_OK;
}