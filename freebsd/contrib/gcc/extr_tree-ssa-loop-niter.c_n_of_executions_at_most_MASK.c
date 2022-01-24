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
struct nb_iter_bound {int /*<<< orphan*/  at_stmt; scalar_t__ bound; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int GE_EXPR ; 
 int GT_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC9 (tree stmt,
			 struct nb_iter_bound *niter_bound, 
			 tree niter)
{
  tree cond;
  tree bound = niter_bound->bound;
  tree bound_type = FUNC0 (bound);
  tree nit_type = FUNC0 (niter);
  enum tree_code cmp;

  FUNC5 (FUNC2 (bound_type)
	      && FUNC2 (nit_type)
	      && FUNC6 (bound));
  if (FUNC1 (nit_type) > FUNC1 (bound_type))
    bound = FUNC4 (nit_type, bound);
  else
    niter = FUNC4 (bound_type, niter);

  /* After the statement niter_bound->at_stmt we know that anything is
     executed at most BOUND times.  */
  if (stmt && FUNC8 (niter_bound->at_stmt, stmt))
    cmp = GE_EXPR;
  /* Before the statement niter_bound->at_stmt we know that anything
     is executed at most BOUND + 1 times.  */
  else
    cmp = GT_EXPR;

  cond = FUNC3 (cmp, boolean_type_node, niter, bound);
  return FUNC7 (cond);
}