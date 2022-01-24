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
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ PTRMEM_CST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ warn_pmf2ptr ; 

tree
FUNC12 (tree type, tree expr)
{
  tree intype;
  tree decl;

  intype = FUNC2 (expr);
  FUNC8 (FUNC3 (intype)
	      || FUNC1 (intype) == METHOD_TYPE);

  if (pedantic || warn_pmf2ptr)
    FUNC11 ("converting from %qT to %qT", intype, type);

  if (FUNC1 (intype) == METHOD_TYPE)
    expr = FUNC5 (expr);
  else if (FUNC1 (expr) == PTRMEM_CST)
    expr = FUNC6 (FUNC0 (expr));
  else
    {
      decl = FUNC10 (FUNC4 (intype), 0);
      decl = FUNC6 (decl);
      expr = FUNC9 (&decl, expr);
    }

  return FUNC7 (type, expr);
}