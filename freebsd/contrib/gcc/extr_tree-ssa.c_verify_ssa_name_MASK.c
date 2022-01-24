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
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (tree ssa_name, bool is_virtual)
{
  if (FUNC2 (ssa_name) != SSA_NAME)
    {
      FUNC4 ("expected an SSA_NAME object");
      return true;
    }

  if (FUNC3 (ssa_name) != FUNC3 (FUNC1 (ssa_name)))
    {
      FUNC4 ("type mismatch between an SSA_NAME and its symbol");
      return true;
    }

  if (FUNC0 (ssa_name))
    {
      FUNC4 ("found an SSA_NAME that had been released into the free pool");
      return true;
    }

  if (is_virtual && FUNC6 (ssa_name))
    {
      FUNC4 ("found a virtual definition for a GIMPLE register");
      return true;
    }

  if (!is_virtual && !FUNC6 (ssa_name))
    {
      FUNC4 ("found a real definition for a non-register");
      return true;
    }

  if (is_virtual && FUNC7 (FUNC1 (ssa_name)) 
      && FUNC5 (FUNC1 (ssa_name)) != NULL)
    {
      FUNC4 ("found real variable when subvariables should have appeared");
      return true;
    }

  return false;
}