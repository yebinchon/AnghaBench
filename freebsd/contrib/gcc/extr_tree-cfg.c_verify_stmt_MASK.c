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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  verify_expr ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC8 (tree stmt, bool last_in_block)
{
  tree addr;

  if (FUNC0 (stmt))
    {
      /* OpenMP directives are validated by the FE and never operated
	 on by the optimizers.  Furthermore, OMP_FOR may contain
	 non-gimple expressions when the main index variable has had
	 its address taken.  This does not affect the loop itself
	 because the header of an OMP_FOR is merely used to determine
	 how to setup the parallel iteration.  */
      return false;
    }

  if (!FUNC3 (stmt))
    {
      FUNC2 ("is not a valid GIMPLE statement");
      goto fail;
    }

  addr = FUNC7 (&stmt, verify_expr, NULL, NULL);
  if (addr)
    {
      FUNC1 (addr);
      return true;
    }

  /* If the statement is marked as part of an EH region, then it is
     expected that the statement could throw.  Verify that when we
     have optimizations that simplify statements such that we prove
     that they cannot throw, that we update other data structures
     to match.  */
  if (FUNC4 (stmt) >= 0)
    {
      if (!FUNC6 (stmt))
	{
	  FUNC2 ("statement marked for throw, but doesn%'t");
	  goto fail;
	}
      if (!last_in_block && FUNC5 (stmt))
	{
	  FUNC2 ("statement marked for throw in middle of block");
	  goto fail;
	}
    }

  return false;

 fail:
  FUNC1 (stmt);
  return true;
}