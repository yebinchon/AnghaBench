
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int stmt_vec_info ;


 scalar_t__ MODIFY_EXPR ;
 scalar_t__ PLUS_EXPR ;
 int REPORT_DETAILS ;
 scalar_t__ STMT_VINFO_DEF_TYPE (int ) ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int * TREE_TYPE (int *) ;
 scalar_t__ TYPE_MAIN_VARIANT (int *) ;
 int WIDEN_SUM_EXPR ;
 int * build2 (int ,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int print_generic_expr (int ,int *,int ) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;
 scalar_t__ vect_reduction_def ;
 int vinfo_for_stmt (int *) ;
 int widened_name_p (int *,int *,int **,int **) ;

__attribute__((used)) static tree
vect_recog_widen_sum_pattern (tree last_stmt, tree *type_in, tree *type_out)
{
  tree stmt, expr;
  tree oprnd0, oprnd1;
  stmt_vec_info stmt_vinfo = vinfo_for_stmt (last_stmt);
  tree type, half_type;
  tree pattern_expr;

  if (TREE_CODE (last_stmt) != MODIFY_EXPR)
    return ((void*)0);

  expr = TREE_OPERAND (last_stmt, 1);
  type = TREE_TYPE (expr);
  if (TREE_CODE (expr) != PLUS_EXPR)
    return ((void*)0);

  if (STMT_VINFO_DEF_TYPE (stmt_vinfo) != vect_reduction_def)
    return ((void*)0);

  oprnd0 = TREE_OPERAND (expr, 0);
  oprnd1 = TREE_OPERAND (expr, 1);
  if (TYPE_MAIN_VARIANT (TREE_TYPE (oprnd0)) != TYPE_MAIN_VARIANT (type)
      || TYPE_MAIN_VARIANT (TREE_TYPE (oprnd1)) != TYPE_MAIN_VARIANT (type))
    return ((void*)0);







  if (!widened_name_p (oprnd0, last_stmt, &half_type, &stmt))
    return ((void*)0);

  oprnd0 = TREE_OPERAND (TREE_OPERAND (stmt, 1), 0);
  *type_in = half_type;
  *type_out = type;


  pattern_expr = build2 (WIDEN_SUM_EXPR, type, oprnd0, oprnd1);
  if (vect_print_dump_info (REPORT_DETAILS))
    {
      fprintf (vect_dump, "vect_recog_widen_sum_pattern: detected: ");
      print_generic_expr (vect_dump, pattern_expr, TDF_SLIM);
    }
  return pattern_expr;
}
