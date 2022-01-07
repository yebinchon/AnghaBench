
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int stmt_vec_info ;


 int DOT_PROD_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ MULT_EXPR ;
 scalar_t__ PLUS_EXPR ;
 int REPORT_DETAILS ;
 int * SSA_NAME_DEF_STMT (int *) ;
 scalar_t__ STMT_VINFO_DEF_TYPE (int) ;
 scalar_t__ STMT_VINFO_IN_PATTERN_P (int) ;
 int * STMT_VINFO_RELATED_STMT (int) ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int * TREE_TYPE (int *) ;
 scalar_t__ TYPE_MAIN_VARIANT (int *) ;
 int TYPE_PRECISION (int *) ;
 scalar_t__ WIDEN_MULT_EXPR ;
 scalar_t__ WIDEN_SUM_EXPR ;
 int * build3 (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int gcc_assert (int) ;
 int print_generic_expr (int ,int *,int ) ;
 int vect_dump ;
 scalar_t__ vect_loop_def ;
 scalar_t__ vect_print_dump_info (int ) ;
 scalar_t__ vect_reduction_def ;
 int vinfo_for_stmt (int *) ;
 scalar_t__ widened_name_p (int *,int *,int **,int **) ;

__attribute__((used)) static tree
vect_recog_dot_prod_pattern (tree last_stmt, tree *type_in, tree *type_out)
{
  tree stmt, expr;
  tree oprnd0, oprnd1;
  tree oprnd00, oprnd01;
  stmt_vec_info stmt_vinfo = vinfo_for_stmt (last_stmt);
  tree type, half_type;
  tree pattern_expr;
  tree prod_type;

  if (TREE_CODE (last_stmt) != MODIFY_EXPR)
    return ((void*)0);

  expr = TREE_OPERAND (last_stmt, 1);
  type = TREE_TYPE (expr);
  if (TREE_CODE (expr) != PLUS_EXPR)
    return ((void*)0);

  if (STMT_VINFO_IN_PATTERN_P (stmt_vinfo))
    {


      stmt = STMT_VINFO_RELATED_STMT (stmt_vinfo);
      expr = TREE_OPERAND (stmt, 1);
      type = TREE_TYPE (expr);
      if (TREE_CODE (expr) != WIDEN_SUM_EXPR)
        return ((void*)0);
      oprnd0 = TREE_OPERAND (expr, 0);
      oprnd1 = TREE_OPERAND (expr, 1);
      half_type = TREE_TYPE (oprnd0);
    }
  else
    {
      tree def_stmt;

      if (STMT_VINFO_DEF_TYPE (stmt_vinfo) != vect_reduction_def)
        return ((void*)0);
      oprnd0 = TREE_OPERAND (expr, 0);
      oprnd1 = TREE_OPERAND (expr, 1);
      if (TYPE_MAIN_VARIANT (TREE_TYPE (oprnd0)) != TYPE_MAIN_VARIANT (type)
          || TYPE_MAIN_VARIANT (TREE_TYPE (oprnd1)) != TYPE_MAIN_VARIANT (type))
        return ((void*)0);
      stmt = last_stmt;

      if (widened_name_p (oprnd0, stmt, &half_type, &def_stmt))
        {
          stmt = def_stmt;
          expr = TREE_OPERAND (stmt, 1);
          oprnd0 = TREE_OPERAND (expr, 0);
        }
      else
        half_type = type;
    }






  prod_type = half_type;
  stmt = SSA_NAME_DEF_STMT (oprnd0);
  gcc_assert (stmt);
  stmt_vinfo = vinfo_for_stmt (stmt);
  gcc_assert (stmt_vinfo);
  if (STMT_VINFO_DEF_TYPE (stmt_vinfo) != vect_loop_def)
    return ((void*)0);
  expr = TREE_OPERAND (stmt, 1);
  if (TREE_CODE (expr) != MULT_EXPR)
    return ((void*)0);
  if (STMT_VINFO_IN_PATTERN_P (stmt_vinfo))
    {


      stmt = STMT_VINFO_RELATED_STMT (stmt_vinfo);
      expr = TREE_OPERAND (stmt, 1);
      if (TREE_CODE (expr) != WIDEN_MULT_EXPR)
        return ((void*)0);
      stmt_vinfo = vinfo_for_stmt (stmt);
      gcc_assert (stmt_vinfo);
      gcc_assert (STMT_VINFO_DEF_TYPE (stmt_vinfo) == vect_loop_def);
      oprnd00 = TREE_OPERAND (expr, 0);
      oprnd01 = TREE_OPERAND (expr, 1);
    }
  else
    {
      tree half_type0, half_type1;
      tree def_stmt;
      tree oprnd0, oprnd1;

      oprnd0 = TREE_OPERAND (expr, 0);
      oprnd1 = TREE_OPERAND (expr, 1);
      if (TYPE_MAIN_VARIANT (TREE_TYPE (oprnd0))
    != TYPE_MAIN_VARIANT (prod_type)
          || TYPE_MAIN_VARIANT (TREE_TYPE (oprnd1))
    != TYPE_MAIN_VARIANT (prod_type))
        return ((void*)0);
      if (!widened_name_p (oprnd0, stmt, &half_type0, &def_stmt))
        return ((void*)0);
      oprnd00 = TREE_OPERAND (TREE_OPERAND (def_stmt, 1), 0);
      if (!widened_name_p (oprnd1, stmt, &half_type1, &def_stmt))
        return ((void*)0);
      oprnd01 = TREE_OPERAND (TREE_OPERAND (def_stmt, 1), 0);
      if (TYPE_MAIN_VARIANT (half_type0) != TYPE_MAIN_VARIANT (half_type1))
        return ((void*)0);
      if (TYPE_PRECISION (prod_type) != TYPE_PRECISION (half_type0) * 2)
 return ((void*)0);
    }

  half_type = TREE_TYPE (oprnd00);
  *type_in = half_type;
  *type_out = type;


  pattern_expr = build3 (DOT_PROD_EXPR, type, oprnd00, oprnd01, oprnd1);
  if (vect_print_dump_info (REPORT_DETAILS))
    {
      fprintf (vect_dump, "vect_recog_dot_prod_pattern: detected: ");
      print_generic_expr (vect_dump, pattern_expr, TDF_SLIM);
    }
  return pattern_expr;
}
