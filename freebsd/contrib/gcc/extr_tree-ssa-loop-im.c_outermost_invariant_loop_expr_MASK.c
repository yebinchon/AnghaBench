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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct loop*,struct loop*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct loop* FUNC6 (int /*<<< orphan*/ ,struct loop*) ; 
 struct loop* FUNC7 (struct loop*,int) ; 
 int tcc_binary ; 
 int tcc_comparison ; 
 int tcc_expression ; 
 int tcc_unary ; 

__attribute__((used)) static struct loop *
FUNC8 (tree expr, struct loop *loop)
{
  enum tree_code_class class = FUNC1 (FUNC0 (expr));
  unsigned i, nops;
  struct loop *max_loop = FUNC7 (loop, 1), *aloop;

  if (FUNC0 (expr) == SSA_NAME
      || FUNC0 (expr) == INTEGER_CST
      || FUNC5 (expr))
    return FUNC6 (expr, loop);

  if (class != tcc_unary
      && class != tcc_binary
      && class != tcc_expression
      && class != tcc_comparison)
    return NULL;

  nops = FUNC2 (FUNC0 (expr));
  for (i = 0; i < nops; i++)
    {
      aloop = FUNC8 (FUNC3 (expr, i), loop);
      if (!aloop)
	return NULL;

      if (FUNC4 (max_loop, aloop))
	max_loop = aloop;
    }

  return max_loop;
}