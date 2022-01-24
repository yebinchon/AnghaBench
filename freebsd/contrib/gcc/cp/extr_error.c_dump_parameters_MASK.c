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
 int TFF_EXPR_IN_PARENS ; 
 int TFF_FUNCTION_DEFAULT_ARGUMENTS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ void_list_node ; 

__attribute__((used)) static void
FUNC11 (tree parmtypes, int flags)
{
  int first;

  FUNC6 (cxx_pp);

  for (first = 1; parmtypes != void_list_node;
       parmtypes = FUNC0 (parmtypes))
    {
      if (!first)
	FUNC10 (cxx_pp);
      first = 0;
      if (!parmtypes)
	{
	  FUNC5 (cxx_pp, "...");
	  break;
	}
      FUNC4 (FUNC2 (parmtypes), flags);

      if ((flags & TFF_FUNCTION_DEFAULT_ARGUMENTS) && FUNC1 (parmtypes))
	{
	  FUNC8 (cxx_pp);
	  FUNC9 (cxx_pp);
	  FUNC8 (cxx_pp);
	  FUNC3 (FUNC1 (parmtypes), flags | TFF_EXPR_IN_PARENS);
	}
    }

  FUNC7 (cxx_pp);
}