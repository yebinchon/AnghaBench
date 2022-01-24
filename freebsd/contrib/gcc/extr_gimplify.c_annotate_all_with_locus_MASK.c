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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (tree *stmt_p, location_t locus)
{
  tree_stmt_iterator i;

  if (!*stmt_p)
    return;

  for (i = FUNC5 (*stmt_p); !FUNC3 (i); FUNC4 (&i))
    {
      tree t = FUNC6 (i);

      /* Assuming we've already been gimplified, we shouldn't
	  see nested chaining constructs anymore.  */
      FUNC2 (FUNC0 (t) != STATEMENT_LIST
		  && FUNC0 (t) != COMPOUND_EXPR);

      FUNC1 (t, locus);
    }
}