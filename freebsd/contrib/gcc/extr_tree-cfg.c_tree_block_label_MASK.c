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
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_NEW_STMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  void_type_node ; 

tree
FUNC11 (basic_block bb)
{
  block_stmt_iterator i, s = FUNC7 (bb);
  bool first = true;
  tree label, stmt;

  for (i = s; !FUNC3 (i); first = false, FUNC6 (&i))
    {
      stmt = FUNC8 (i);
      if (FUNC2 (stmt) != LABEL_EXPR)
	break;
      label = FUNC1 (stmt);
      if (!FUNC0 (label))
	{
	  if (!first)
	    FUNC5 (&i, &s);
	  return label;
	}
    }

  label = FUNC10 ();
  stmt = FUNC9 (LABEL_EXPR, void_type_node, label);
  FUNC4 (&s, stmt, BSI_NEW_STMT);
  return label;
}