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
typedef  int stmt_vec_info ;

/* Variables and functions */
 int /*<<< orphan*/  DOT_PROD_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ MULT_EXPR ; 
 scalar_t__ PLUS_EXPR ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ WIDEN_MULT_EXPR ; 
 scalar_t__ WIDEN_SUM_EXPR ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ vect_loop_def ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ vect_reduction_def ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static tree
FUNC16 (tree last_stmt, tree *type_in, tree *type_out)
{
  tree stmt, expr;
  tree oprnd0, oprnd1;
  tree oprnd00, oprnd01;
  stmt_vec_info stmt_vinfo = FUNC14 (last_stmt);
  tree type, half_type;
  tree pattern_expr;
  tree prod_type;

  if (FUNC4 (last_stmt) != MODIFY_EXPR)
    return NULL;

  expr = FUNC5 (last_stmt, 1);
  type = FUNC6 (expr);

  /* Look for the following pattern 
          DX = (TYPE1) X;
          DY = (TYPE1) Y;
          DPROD = DX * DY; 
          DDPROD = (TYPE2) DPROD;
          sum_1 = DDPROD + sum_0;
     In which 
     - DX is double the size of X
     - DY is double the size of Y
     - DX, DY, DPROD all have the same type
     - sum is the same size of DPROD or bigger
     - sum has been recognized as a reduction variable.

     This is equivalent to:
       DPROD = X w* Y;          #widen mult
       sum_1 = DPROD w+ sum_0;  #widen summation
     or
       DPROD = X w* Y;          #widen mult
       sum_1 = DPROD + sum_0;   #summation
   */

  /* Starting from LAST_STMT, follow the defs of its uses in search
     of the above pattern.  */

  if (FUNC4 (expr) != PLUS_EXPR)
    return NULL;

  if (FUNC2 (stmt_vinfo))
    {
      /* Has been detected as widening-summation?  */

      stmt = FUNC3 (stmt_vinfo);
      expr = FUNC5 (stmt, 1);
      type = FUNC6 (expr);
      if (FUNC4 (expr) != WIDEN_SUM_EXPR)
        return NULL;
      oprnd0 = FUNC5 (expr, 0);
      oprnd1 = FUNC5 (expr, 1);
      half_type = FUNC6 (oprnd0);
    }
  else
    {
      tree def_stmt;

      if (FUNC1 (stmt_vinfo) != vect_reduction_def)
        return NULL;
      oprnd0 = FUNC5 (expr, 0);
      oprnd1 = FUNC5 (expr, 1);
      if (FUNC7 (FUNC6 (oprnd0)) != FUNC7 (type)
          || FUNC7 (FUNC6 (oprnd1)) != FUNC7 (type))
        return NULL;
      stmt = last_stmt;

      if (FUNC15 (oprnd0, stmt, &half_type, &def_stmt))
        {
          stmt = def_stmt;
          expr = FUNC5 (stmt, 1);
          oprnd0 = FUNC5 (expr, 0);
        }
      else
        half_type = type;
    }

  /* So far so good. Since last_stmt was detected as a (summation) reduction,
     we know that oprnd1 is the reduction variable (defined by a loop-header
     phi), and oprnd0 is an ssa-name defined by a stmt in the loop body.
     Left to check that oprnd0 is defined by a (widen_)mult_expr  */

  prod_type = half_type;
  stmt = FUNC0 (oprnd0);
  FUNC11 (*stmt);
  stmt_vinfo = FUNC14 (stmt);
  FUNC11 (stmt_vinfo);
  if (FUNC1 (stmt_vinfo) != vect_loop_def)
    return NULL;
  expr = FUNC5 (stmt, 1);
  if (FUNC4 (expr) != MULT_EXPR)
    return NULL;
  if (FUNC2 (stmt_vinfo))
    {
      /* Has been detected as a widening multiplication?  */

      stmt = FUNC3 (stmt_vinfo);
      expr = FUNC5 (stmt, 1);
      if (FUNC4 (expr) != WIDEN_MULT_EXPR)
        return NULL;
      stmt_vinfo = FUNC14 (stmt);
      FUNC11 (stmt_vinfo);
      FUNC11 (FUNC1 (stmt_vinfo) == vect_loop_def);
      oprnd00 = FUNC5 (expr, 0);
      oprnd01 = FUNC5 (expr, 1);
    }
  else
    {
      tree half_type0, half_type1;
      tree def_stmt;
      tree oprnd0, oprnd1;

      oprnd0 = FUNC5 (expr, 0);
      oprnd1 = FUNC5 (expr, 1);
      if (FUNC7 (FUNC6 (oprnd0)) 
				!= FUNC7 (prod_type)
          || FUNC7 (FUNC6 (oprnd1)) 
				!= FUNC7 (prod_type))
        return NULL;
      if (!FUNC15 (oprnd0, stmt, &half_type0, &def_stmt))
        return NULL;
      oprnd00 = FUNC5 (FUNC5 (def_stmt, 1), 0);
      if (!FUNC15 (oprnd1, stmt, &half_type1, &def_stmt))
        return NULL;
      oprnd01 = FUNC5 (FUNC5 (def_stmt, 1), 0);
      if (FUNC7 (half_type0) != FUNC7 (half_type1))
        return NULL;
      if (FUNC8 (prod_type) != FUNC8 (half_type0) * 2)
	return NULL;
    }

  half_type = FUNC6 (oprnd00);
  *type_in = half_type;
  *type_out = type;
  
  /* Pattern detected. Create a stmt to be used to replace the pattern: */
  pattern_expr = FUNC9 (DOT_PROD_EXPR, type, oprnd00, oprnd01, oprnd1);
  if (FUNC13 (REPORT_DETAILS))
    {
      FUNC10 (vect_dump, "vect_recog_dot_prod_pattern: detected: ");
      FUNC12 (vect_dump, pattern_expr, TDF_SLIM);
    }
  return pattern_expr;
}