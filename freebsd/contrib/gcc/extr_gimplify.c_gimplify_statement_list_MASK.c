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
typedef  int /*<<< orphan*/ * tree ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;

/* Variables and functions */
 int GS_ALL_DONE ; 
 int GS_OK ; 
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TSI_SAME_STMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum gimplify_status
FUNC11 (tree *expr_p, tree *pre_p)
{
  tree temp = FUNC10 (*expr_p, NULL);

  tree_stmt_iterator i = FUNC7 (*expr_p);

  while (!FUNC4 (i))
    {
      tree t;

      FUNC2 (FUNC9 (i));

      t = FUNC8 (i);
      if (t == NULL)
	FUNC3 (&i);
      else if (FUNC0 (t) == STATEMENT_LIST)
	{
	  FUNC5 (&i, t, TSI_SAME_STMT);
	  FUNC3 (&i);
	}
      else
	FUNC6 (&i);
    }

  if (temp)
    {
      FUNC1 (*expr_p, pre_p);
      *expr_p = temp;
      return GS_OK;
    }

  return GS_ALL_DONE;
}