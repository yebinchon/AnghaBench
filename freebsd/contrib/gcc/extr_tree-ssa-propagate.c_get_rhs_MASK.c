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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
#define  COND_EXPR 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  GOTO_EXPR 132 
#define  LABEL_EXPR 131 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  MODIFY_EXPR 130 
#define  RETURN_EXPR 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  SWITCH_EXPR 128 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int WITH_SIZE_EXPR ; 

tree
FUNC6 (tree stmt)
{
  enum tree_code code = FUNC4 (stmt);

  switch (code)
    {
    case RETURN_EXPR:
      stmt = FUNC5 (stmt, 0);
      if (!stmt || FUNC4 (stmt) != MODIFY_EXPR)
	return stmt;
      /* FALLTHRU */

    case MODIFY_EXPR:
      stmt = FUNC5 (stmt, 1);
      if (FUNC4 (stmt) == WITH_SIZE_EXPR)
	return FUNC5 (stmt, 0);
      else
	return stmt;

    case COND_EXPR:
      return FUNC0 (stmt);
    case SWITCH_EXPR:
      return FUNC3 (stmt);
    case GOTO_EXPR:
      return FUNC1 (stmt);
    case LABEL_EXPR:
      return FUNC2 (stmt);

    default:
      return stmt;
    }
}