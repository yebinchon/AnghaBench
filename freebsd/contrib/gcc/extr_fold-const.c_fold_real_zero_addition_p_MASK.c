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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (tree type, tree addend, int negate)
{
  if (!FUNC7 (addend))
    return false;

  /* Don't allow the fold with -fsignaling-nans.  */
  if (FUNC2 (FUNC6 (type)))
    return false;

  /* Allow the fold if zeros aren't signed, or their sign isn't important.  */
  if (!FUNC0 (FUNC6 (type)))
    return true;

  /* Treat x + -0 as x - 0 and x - -0 as x + 0.  */
  if (FUNC4 (addend) == REAL_CST
      && FUNC3 (FUNC5 (addend)))
    negate = !negate;

  /* The mode has signed zeros, and we have to honor their sign.
     In this situation, there is only one case we can return true for.
     X - 0 is the same as X unless rounding towards -infinity is
     supported.  */
  return negate && !FUNC1 (FUNC6 (type));
}