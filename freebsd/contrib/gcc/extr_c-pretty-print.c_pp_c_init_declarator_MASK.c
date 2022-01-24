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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10 (c_pretty_printer *pp, tree t)
{
  FUNC5 (pp, t);
  /* We don't want to output function definitions here.  There are handled
     elsewhere (and the syntactic form is bogus anyway).  */
  if (FUNC1 (t) != FUNCTION_DECL && FUNC0 (t))
    {
      tree init = FUNC0 (t);
      /* This C++ bit is handled here because it is easier to do so.
	 In templates, the C++ parser builds a TREE_LIST for a
	 direct-initialization; the TREE_PURPOSE is the variable to
	 initialize and the TREE_VALUE is the initializer.  */
      if (FUNC1 (init) == TREE_LIST)
	{
	  FUNC4 (pp);
	  FUNC7 (pp, FUNC2 (init));
	  FUNC8 (pp);
	}
      else
	{
	  FUNC9 (pp);
	  FUNC6 (pp);
	  FUNC9 (pp);
	  FUNC3 (pp, init);
	}
    }
}