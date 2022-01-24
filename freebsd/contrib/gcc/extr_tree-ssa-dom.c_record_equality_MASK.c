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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ VALUE_HANDLE ; 
 int /*<<< orphan*/  dconst0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10 (tree x, tree y)
{
  tree prev_x = NULL, prev_y = NULL;

  if (FUNC3 (x) == SSA_NAME)
    prev_x = FUNC2 (x);
  if (FUNC3 (y) == SSA_NAME)
    prev_y = FUNC2 (y);

  /* If one of the previous values is invariant, or invariant in more loops
     (by depth), then use that.
     Otherwise it doesn't matter which value we choose, just so
     long as we canonicalize on one value.  */
  if (FUNC4 (y))
    ;
  else if (FUNC4 (x) || (FUNC8 (x) <= FUNC8 (y)))
    prev_x = x, x = y, y = prev_x, prev_x = prev_y;
  else if (prev_x && FUNC4 (prev_x))
    x = y, y = prev_x, prev_x = prev_y;
  else if (prev_y && FUNC3 (prev_y) != VALUE_HANDLE)
    y = prev_y;

  /* After the swapping, we must have one SSA_NAME.  */
  if (FUNC3 (x) != SSA_NAME)
    return;

  /* For IEEE, -0.0 == 0.0, so we don't necessarily know the sign of a
     variable compared against zero.  If we're honoring signed zeros,
     then we cannot record this value unless we know that the value is
     nonzero.  */
  if (FUNC0 (FUNC7 (FUNC6 (x)))
      && (FUNC3 (y) != REAL_CST
	  || FUNC1 (dconst0, FUNC5 (y))))
    return;

  FUNC9 (x, y, prev_x);
}