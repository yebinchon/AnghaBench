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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRY_CATCH_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC5 (tree *stmt_p)
{
  tree body = FUNC2 (*stmt_p);
  tree cleanup = FUNC1 (*stmt_p);

  FUNC4 (&body);

  if (FUNC0 (*stmt_p))
    /* A cleanup is an expression, so it doesn't need to be genericized.  */;
  else
    FUNC4 (&cleanup);

  *stmt_p = FUNC3 (TRY_CATCH_EXPR, void_type_node, body, cleanup);
}