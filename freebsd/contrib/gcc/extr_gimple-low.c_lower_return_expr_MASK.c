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
struct lower_data {scalar_t__ return_statements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TSI_SAME_STMT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC13 (tree_stmt_iterator *tsi, struct lower_data *data)
{
  tree stmt = FUNC12 (*tsi);
  tree value, t, label;

  /* Extract the value being returned.  */
  value = FUNC4 (stmt, 0);
  if (value && FUNC3 (value) == MODIFY_EXPR)
    value = FUNC4 (value, 1);

  /* Match this up with an existing return statement that's been created.  */
  for (t = data->return_statements; t ; t = FUNC2 (t))
    {
      tree tvalue = FUNC4 (FUNC6 (t), 0);
      if (tvalue && FUNC3 (tvalue) == MODIFY_EXPR)
	tvalue = FUNC4 (tvalue, 1);

      if (value == tvalue)
	{
	  label = FUNC5 (t);
	  goto found;
	}
    }

  /* Not found.  Create a new label and record the return statement.  */
  label = FUNC8 ();
  data->return_statements = FUNC9 (label, stmt, data->return_statements);

  /* Generate a goto statement and remove the return statement.  */
 found:
  t = FUNC7 (GOTO_EXPR, void_type_node, label);
  FUNC1 (t, FUNC0 (stmt));
  FUNC11 (tsi, t, TSI_SAME_STMT);
  FUNC10 (tsi);
}