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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC10 (tree block)
{
  tree decl, sub;

  for (decl = FUNC1 (block); decl; decl = FUNC6 (decl))
    {
      if (FUNC7 (decl) == VAR_DECL
	  && FUNC3 (decl)
	  && FUNC5 (FUNC2 (decl))
	  && FUNC8 (FUNC4 (FUNC2 (decl))))
	FUNC9 (0, "variable %q+D might be clobbered by %<longjmp%>"
		 " or %<vfork%>",
		 decl);
    }

  for (sub = FUNC0 (block); sub; sub = FUNC6 (sub))
    FUNC10 (sub);
}