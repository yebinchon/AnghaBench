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
 scalar_t__ ADDR_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int VISIBILITY_ANON ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (tree decl, tree targs)
{
  /* If this is a template instantiation, check the innermost
     template args for visibility constraints.  The outer template
     args are covered by the class check.  */
  tree args = FUNC1 (targs);
  int i;
  for (i = FUNC9 (args); i > 0; --i)
    {
      int vis = 0;

      tree arg = FUNC8 (args, i-1);
      if (FUNC10 (arg))
	vis = FUNC12 (arg);
      else if (FUNC7 (arg) && FUNC2 (FUNC7 (arg)))
	{
	  FUNC3 (arg);
	  if (FUNC4 (arg) == ADDR_EXPR)
	    arg = FUNC5 (arg, 0);
	  if (FUNC4 (arg) == VAR_DECL
	      || FUNC4 (arg) == FUNCTION_DECL)
	    {
	      if (! FUNC6 (arg))
		vis = VISIBILITY_ANON;
	      else
		vis = FUNC0 (arg);
	    }
	}
      if (vis)
	FUNC11 (decl, vis);
    }
}