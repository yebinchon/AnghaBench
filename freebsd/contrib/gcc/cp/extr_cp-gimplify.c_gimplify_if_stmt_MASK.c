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
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC8 (tree *stmt_p)
{
  tree stmt, cond, then_, else_;

  stmt = *stmt_p;
  cond = FUNC1 (stmt);
  then_ = FUNC2 (stmt);
  else_ = FUNC0 (stmt);

  if (!then_)
    then_ = FUNC5 ();
  if (!else_)
    else_ = FUNC5 ();

  if (FUNC6 (cond) && !FUNC3 (else_))
    stmt = then_;
  else if (FUNC7 (cond) && !FUNC3 (then_))
    stmt = else_;
  else
    stmt = FUNC4 (COND_EXPR, void_type_node, cond, then_, else_);
  *stmt_p = stmt;
}