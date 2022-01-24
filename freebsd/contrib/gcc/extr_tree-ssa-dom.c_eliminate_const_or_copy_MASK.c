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
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (tree t, bitmap interesting_names)
{
  tree lhs = FUNC2 (t);
  tree rhs;
  int version = FUNC0 (lhs);

  /* If the LHS of this statement or PHI has no uses, then we can
     just eliminate it.  This can occur if, for example, the PHI
     was created by block duplication due to threading and its only
     use was in the conditional at the end of the block which was
     deleted.  */
  if (FUNC4 (lhs))
    {
      FUNC1 (interesting_names, version);
      FUNC6 (t);
      return;
    }

  /* Get the RHS of the assignment or PHI node if the PHI is a
     degenerate.  */
  rhs = FUNC3 (t);
  if (!rhs)
    {
      FUNC1 (interesting_names, version);
      return;
    }

  FUNC5 (t, lhs, rhs, interesting_names);

  /* Note that T may well have been deleted by now, so do
     not access it, instead use the saved version # to clear
     T's entry in the worklist.  */
  FUNC1 (interesting_names, version);
}