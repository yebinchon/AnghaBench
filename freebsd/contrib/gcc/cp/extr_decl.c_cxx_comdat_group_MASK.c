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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char const* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 

const char *
FUNC11 (tree decl)
{
  tree name;

  /* Virtual tables, construction virtual tables, and virtual table
     tables all go in a single COMDAT group, named after the primary
     virtual table.  */
  if (FUNC10 (decl) == VAR_DECL && FUNC6 (decl))
    name = FUNC1 (FUNC0 (FUNC2 (decl)));
  /* For all other DECLs, the COMDAT group is the mangled name of the
     declaration itself.  */
  else
    {
      while (FUNC5 (decl))
	{
	  /* If TARGET_USE_LOCAL_THUNK_ALIAS_P, use_thunk puts the thunk
	     into the same section as the target function.  In that case
	     we must return target's name.  */
	  tree target = FUNC9 (decl);
	  if (FUNC8 (target)
	      && FUNC4 (target) != NULL
	      && FUNC3 (target))
	    decl = target;
	  else
	    break;
	}
      name = FUNC1 (decl);
    }

  return FUNC7 (name);
}