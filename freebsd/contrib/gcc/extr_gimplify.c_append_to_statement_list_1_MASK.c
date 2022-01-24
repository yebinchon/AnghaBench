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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TSI_CONTINUE_LINKING ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (tree t, tree *list_p)
{
  tree list = *list_p;
  tree_stmt_iterator i;

  if (!list)
    {
      if (t && FUNC0 (t) == STATEMENT_LIST)
	{
	  *list_p = t;
	  return;
	}
      *list_p = list = FUNC1 ();
    }

  i = FUNC2 (list);
  FUNC3 (&i, t, TSI_CONTINUE_LINKING);
}