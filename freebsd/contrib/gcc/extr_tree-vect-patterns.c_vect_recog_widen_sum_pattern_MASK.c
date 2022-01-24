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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  stmt_vec_info ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ PLUS_EXPR ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIDEN_SUM_EXPR ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ vect_reduction_def ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static tree
FUNC11 (tree last_stmt, tree *type_in, tree *type_out)
{
  tree stmt, expr;
  tree oprnd0, oprnd1;
  stmt_vec_info stmt_vinfo = FUNC9 (last_stmt);
  tree type, half_type;
  tree pattern_expr;

  if (FUNC1 (last_stmt) != MODIFY_EXPR)
    return NULL;

  expr = FUNC2 (last_stmt, 1);
  type = FUNC3 (expr);

  /* Look for the following pattern
          DX = (TYPE) X;
          sum_1 = DX + sum_0;
     In which DX is at least double the size of X, and sum_1 has been
     recognized as a reduction variable.
   */

  /* Starting from LAST_STMT, follow the defs of its uses in search
     of the above pattern.  */

  if (FUNC1 (expr) != PLUS_EXPR)
    return NULL;

  if (FUNC0 (stmt_vinfo) != vect_reduction_def)
    return NULL;

  oprnd0 = FUNC2 (expr, 0);
  oprnd1 = FUNC2 (expr, 1);
  if (FUNC4 (FUNC3 (oprnd0)) != FUNC4 (type)
      || FUNC4 (FUNC3 (oprnd1)) != FUNC4 (type))
    return NULL;

  /* So far so good. Since last_stmt was detected as a (summation) reduction,
     we know that oprnd1 is the reduction variable (defined by a loop-header
     phi), and oprnd0 is an ssa-name defined by a stmt in the loop body.
     Left to check that oprnd0 is defined by a cast from type 'type' to type
     'TYPE'.  */

  if (!FUNC10 (oprnd0, last_stmt, &half_type, &stmt))
    return NULL;

  oprnd0 = FUNC2 (FUNC2 (stmt, 1), 0);
  *type_in = half_type;
  *type_out = type;

  /* Pattern detected. Create a stmt to be used to replace the pattern: */
  pattern_expr = FUNC5 (WIDEN_SUM_EXPR, type, oprnd0, oprnd1);
  if (FUNC8 (REPORT_DETAILS))
    {
      FUNC6 (vect_dump, "vect_recog_widen_sum_pattern: detected: ");
      FUNC7 (vect_dump, pattern_expr, TDF_SLIM);
    }
  return pattern_expr;
}