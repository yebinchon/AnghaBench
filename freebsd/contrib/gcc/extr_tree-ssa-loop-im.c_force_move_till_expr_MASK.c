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
struct loop {int dummy; } ;
typedef  enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct loop*,struct loop*) ; 
 int tcc_binary ; 
 int tcc_comparison ; 
 int tcc_expression ; 
 int tcc_unary ; 

__attribute__((used)) static void
FUNC7 (tree expr, struct loop *orig_loop, struct loop *loop)
{
  enum tree_code_class class = FUNC3 (FUNC2 (expr));
  unsigned i, nops;

  if (FUNC2 (expr) == SSA_NAME)
    {
      tree stmt = FUNC1 (expr);
      if (FUNC0 (stmt))
	return;

      FUNC6 (stmt, orig_loop, loop);
      return;
    }

  if (class != tcc_unary
      && class != tcc_binary
      && class != tcc_expression
      && class != tcc_comparison)
    return;

  nops = FUNC4 (FUNC2 (expr));
  for (i = 0; i < nops; i++)
    FUNC7 (FUNC5 (expr, i), orig_loop, loop);
}