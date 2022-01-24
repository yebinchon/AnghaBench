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
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  enum vect_def_type { ____Placeholder_vect_def_type } vect_def_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool
FUNC5 (tree cond, loop_vec_info loop_vinfo)
{
  tree lhs, rhs;
  tree def;
  enum vect_def_type dt;

  if (!FUNC0 (cond))
    return false;

  lhs = FUNC3 (cond, 0);
  rhs = FUNC3 (cond, 1);

  if (FUNC2 (lhs) == SSA_NAME)
    {
      tree lhs_def_stmt = FUNC1 (lhs);
      if (!FUNC4 (lhs, loop_vinfo, &lhs_def_stmt, &def, &dt))
	return false;
    }
  else if (FUNC2 (lhs) != INTEGER_CST && FUNC2 (lhs) != REAL_CST)
    return false;

  if (FUNC2 (rhs) == SSA_NAME)
    {
      tree rhs_def_stmt = FUNC1 (rhs);
      if (!FUNC4 (rhs, loop_vinfo, &rhs_def_stmt, &def, &dt))
	return false;
    }
  else if (FUNC2 (rhs) != INTEGER_CST  && FUNC2 (rhs) != REAL_CST)
    return false;

  return true;
}