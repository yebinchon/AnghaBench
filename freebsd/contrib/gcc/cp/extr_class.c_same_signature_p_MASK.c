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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12 (tree fndecl, tree base_fndecl)
{
  /* One destructor overrides another if they are the same kind of
     destructor.  */
  if (FUNC2 (base_fndecl) && FUNC2 (fndecl)
      && FUNC11 (base_fndecl) == FUNC11 (fndecl))
    return 1;
  /* But a non-destructor never overrides a destructor, nor vice
     versa, nor do different kinds of destructors override
     one-another.  For example, a complete object destructor does not
     override a deleting destructor.  */
  if (FUNC2 (base_fndecl) || FUNC2 (fndecl))
    return 0;

  if (FUNC3 (fndecl) == FUNC3 (base_fndecl)
      || (FUNC0 (fndecl)
	  && FUNC0 (base_fndecl)
	  && FUNC10 (FUNC1 (fndecl),
			  FUNC1 (base_fndecl))))
    {
      tree types, base_types;
      types = FUNC7 (FUNC5 (fndecl));
      base_types = FUNC7 (FUNC5 (base_fndecl));
      if ((FUNC8 (FUNC5 (FUNC6 (base_types)))
	   == FUNC8 (FUNC5 (FUNC6 (types))))
	  && FUNC9 (FUNC4 (base_types), FUNC4 (types)))
	return 1;
    }
  return 0;
}