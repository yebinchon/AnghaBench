#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_MARK ; 
 int NE_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,int*) ; 
 scalar_t__ flag_delete_null_pointer_checks ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (tree stmt, tree op, enum tree_code *comp_code_p, tree *val_p)
{
  *val_p = NULL_TREE;
  *comp_code_p = ERROR_MARK;

  /* Do not attempt to infer anything in names that flow through
     abnormal edges.  */
  if (FUNC2 (op))
    return false;

  /* Similarly, don't infer anything from statements that may throw
     exceptions.  */
  if (FUNC8 (stmt))
    return false;

  /* If STMT is the last statement of a basic block with no
     successors, there is no point inferring anything about any of its
     operands.  We would not be able to find a proper insertion point
     for the assertion, anyway.  */
  if (FUNC7 (stmt) && FUNC0 (FUNC4 (stmt)->succs) == 0)
    return false;

  /* We can only assume that a pointer dereference will yield
     non-NULL if -fdelete-null-pointer-checks is enabled.  */
  if (flag_delete_null_pointer_checks && FUNC1 (FUNC3 (op)))
    {
      bool is_store;
      unsigned num_uses, num_derefs;

      FUNC6 (op, stmt, &num_uses, &num_derefs, &is_store);
      if (num_derefs > 0)
	{
	  *val_p = FUNC5 (FUNC3 (op), 0);
	  *comp_code_p = NE_EXPR;
	  return true;
	}
    }

  return false;
}