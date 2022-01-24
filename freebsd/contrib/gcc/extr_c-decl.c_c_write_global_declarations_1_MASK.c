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
typedef  int TREE_NO_WARNING ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10 (tree globals)
{
  tree decl;
  bool reconsider;

  /* Process the decls in the order they were written.  */
  for (decl = globals; decl; decl = FUNC3 (decl))
    {
      /* Check for used but undefined static functions using the C
	 standard's definition of "used", and set TREE_NO_WARNING so
	 that check_global_declarations doesn't repeat the check.  */
      if (FUNC4 (decl) == FUNCTION_DECL
	  && FUNC2 (decl) == 0
	  && FUNC1 (decl)
	  && !FUNC5 (decl)
	  && FUNC0 (decl))
	{
	  FUNC7 ("%q+F used but never defined", decl);
	  TREE_NO_WARNING (decl) = 1;
	}

      FUNC8 (decl);
    }

  do
    {
      reconsider = false;
      for (decl = globals; decl; decl = FUNC3 (decl))
	reconsider |= FUNC9 (decl);
    }
  while (reconsider);

  for (decl = globals; decl; decl = FUNC3 (decl))
    FUNC6 (decl);
}