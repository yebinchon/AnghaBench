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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int GS_ALL_DONE ; 
 int GS_ERROR ; 
 int GS_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ gimplify_omp_ctxp ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum gimplify_status
FUNC10 (tree *expr_p)
{
  tree decl = *expr_p;

  /* ??? If this is a local variable, and it has not been seen in any
     outer BIND_EXPR, then it's probably the result of a duplicate
     declaration, for which we've already issued an error.  It would
     be really nice if the front end wouldn't leak these at all.
     Currently the only known culprit is C++ destructors, as seen
     in g++.old-deja/g++.jason/binding.C.  */
  if (FUNC4 (decl) == VAR_DECL
      && !FUNC2 (decl)
      && !FUNC5 (decl) && !FUNC0 (decl)
      && FUNC6 (decl) == current_function_decl)
    {
      FUNC7 (errorcount || sorrycount);
      return GS_ERROR;
    }

  /* When within an OpenMP context, notice uses of variables.  */
  if (gimplify_omp_ctxp && FUNC8 (gimplify_omp_ctxp, decl, true))
    return GS_ALL_DONE;

  /* If the decl is an alias for another expression, substitute it now.  */
  if (FUNC1 (decl))
    {
      *expr_p = FUNC9 (FUNC3 (decl));
      return GS_OK;
    }

  return GS_ALL_DONE;
}