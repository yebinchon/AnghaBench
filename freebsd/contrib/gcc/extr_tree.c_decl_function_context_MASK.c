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
 scalar_t__ BLOCK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ ERROR_MARK ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

tree
FUNC9 (tree decl)
{
  tree context;

  if (FUNC3 (decl) == ERROR_MARK)
    return 0;

  /* C++ virtual functions use DECL_CONTEXT for the class of the vtable
     where we look up the function at runtime.  Such functions always take
     a first argument of type 'pointer to real context'.

     C++ should really be fixed to use DECL_CONTEXT for the real context,
     and use something else for the "virtual context".  */
  else if (FUNC3 (decl) == FUNCTION_DECL && FUNC2 (decl))
    context
      = FUNC7
	(FUNC4 (FUNC5 (FUNC6 (FUNC4 (decl)))));
  else
    context = FUNC1 (decl);

  while (context && FUNC3 (context) != FUNCTION_DECL)
    {
      if (FUNC3 (context) == BLOCK)
	context = FUNC0 (context);
      else
	context = FUNC8 (context);
    }

  return context;
}