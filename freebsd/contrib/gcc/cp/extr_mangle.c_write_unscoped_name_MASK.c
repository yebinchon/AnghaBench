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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * global_namespace ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static void
FUNC7 (const tree decl)
{
  tree context = FUNC0 (decl);

  FUNC2 ("unscoped-name", decl);

  /* Is DECL in ::std?  */
  if (FUNC1 (context))
    {
      FUNC5 ("St");
      FUNC6 (decl);
    }
  else
    {
      /* If not, it should be either in the global namespace, or directly
	 in a local function scope.  */
      FUNC4 (context == global_namespace
		  || context == NULL
		  || FUNC3 (context) == FUNCTION_DECL);

      FUNC6 (decl);
    }
}