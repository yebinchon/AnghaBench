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
typedef  int /*<<< orphan*/  stmt_vec_info ;
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  enum vect_def_type { ____Placeholder_vect_def_type } vect_def_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int vect_constant_def ; 
 int vect_invariant_def ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int vect_loop_def ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (tree name, tree use_stmt, tree *half_type, tree *def_stmt)
{
  tree dummy;
  loop_vec_info loop_vinfo;
  stmt_vec_info stmt_vinfo;
  tree expr;
  tree type = FUNC4 (name);
  tree oprnd0;
  enum vect_def_type dt;
  tree def;

  stmt_vinfo = FUNC8 (use_stmt);
  loop_vinfo = FUNC1 (stmt_vinfo);

  if (!FUNC7 (name, loop_vinfo, def_stmt, &def, &dt))
    return false;

  if (dt != vect_loop_def
      && dt != vect_invariant_def && dt != vect_constant_def)
    return false;

  if (! *def_stmt)
    return false;

  if (FUNC2 (*def_stmt) != MODIFY_EXPR)
    return false;

  expr = FUNC3 (*def_stmt, 1);
  if (FUNC2 (expr) != NOP_EXPR)
    return false;

  oprnd0 = FUNC3 (expr, 0);

  *half_type = FUNC4 (oprnd0);
  if (!FUNC0 (type) || !FUNC0 (*half_type)
      || (FUNC6 (type) != FUNC6 (*half_type))
      || (FUNC5 (type) < (FUNC5 (*half_type) * 2)))
    return false;

  if (!FUNC7 (oprnd0, loop_vinfo, &dummy, &dummy, &dt))
    return false;

  if (dt != vect_invariant_def && dt != vect_constant_def
      && dt != vect_loop_def)
    return false;

  return true;
}