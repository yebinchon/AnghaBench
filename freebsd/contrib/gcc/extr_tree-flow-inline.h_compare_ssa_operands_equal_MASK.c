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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  ssa_op_iter ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC5 (tree stmt1, tree stmt2, int flags)
{
  ssa_op_iter iter1, iter2;
  tree op1 = NULL_TREE;
  tree op2 = NULL_TREE;
  bool look1, look2;

  if (stmt1 == stmt2)
    return true;

  look1 = stmt1 && FUNC4 (stmt1);
  look2 = stmt2 && FUNC4 (stmt2);

  if (look1)
    {
      op1 = FUNC2 (&iter1, stmt1, flags);
      if (!look2)
        return FUNC1 (&iter1);
    }
  else
    FUNC0 (&iter1);

  if (look2)
    {
      op2 = FUNC2 (&iter2, stmt2, flags);
      if (!look1)
        return FUNC1 (&iter2);
    }
  else
    FUNC0 (&iter2);

  while (!FUNC1 (&iter1) && !FUNC1 (&iter2))
    {
      if (op1 != op2)
	return false;
      op1 = FUNC3 (&iter1);
      op2 = FUNC3 (&iter2);
    }

  return (FUNC1 (&iter1) && FUNC1 (&iter2));
}