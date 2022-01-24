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
typedef  enum move_pos { ____Placeholder_move_pos } move_pos ;
struct TYPE_2__ {scalar_t__ has_volatile_ops; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 int MOVE_IMPOSSIBLE ; 
 int MOVE_POSSIBLE ; 
 int MOVE_PRESERVE_EXECUTION ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_unswitch_loops ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

enum move_pos
FUNC8 (tree stmt)
{
  tree lhs, rhs;

  if (flag_unswitch_loops
      && FUNC1 (stmt) == COND_EXPR)
    {
      /* If we perform unswitching, force the operands of the invariant
	 condition to be moved out of the loop.  */
      return MOVE_POSSIBLE;
    }

  if (FUNC1 (stmt) != MODIFY_EXPR)
    return MOVE_IMPOSSIBLE;

  if (FUNC6 (stmt))
    return MOVE_IMPOSSIBLE;

  if (FUNC5 (stmt)->has_volatile_ops)
    return MOVE_IMPOSSIBLE;

  lhs = FUNC2 (stmt, 0);
  if (FUNC1 (lhs) == SSA_NAME
      && FUNC0 (lhs))
    return MOVE_IMPOSSIBLE;

  rhs = FUNC2 (stmt, 1);

  if (FUNC3 (rhs))
    return MOVE_IMPOSSIBLE;

  if (FUNC1 (lhs) != SSA_NAME
      || FUNC7 (rhs))
    return MOVE_PRESERVE_EXECUTION;

  if (FUNC4 (stmt))
    {
      /* While pure or const call is guaranteed to have no side effects, we
	 cannot move it arbitrarily.  Consider code like

	 char *s = something ();

	 while (1)
	   {
	     if (s)
	       t = strlen (s);
	     else
	       t = 0;
	   }

	 Here the strlen call cannot be moved out of the loop, even though
	 s is invariant.  In addition to possibly creating a call with
	 invalid arguments, moving out a function call that is not executed
	 may cause performance regressions in case the call is costly and
	 not executed at all.  */
      return MOVE_PRESERVE_EXECUTION;
    }
  return MOVE_POSSIBLE;
}