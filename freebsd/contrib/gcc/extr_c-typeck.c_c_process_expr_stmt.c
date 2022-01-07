
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 int COMPLETE_OR_VOID_TYPE_P (scalar_t__) ;
 scalar_t__ CONSTANT_CLASS_P (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ EXPR_P (scalar_t__) ;
 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 int STATEMENT_LIST_STMT_EXPR (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 int cur_stmt_list ;
 int emit_side_effect_warnings (scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ extra_warnings ;
 int input_location ;
 int verify_sequence_points (scalar_t__) ;
 scalar_t__ warn_sequence_point ;
 scalar_t__ warn_unused_value ;

tree
c_process_expr_stmt (tree expr)
{
  if (!expr)
    return NULL_TREE;

  if (warn_sequence_point)
    verify_sequence_points (expr);

  if (TREE_TYPE (expr) != error_mark_node
      && !COMPLETE_OR_VOID_TYPE_P (TREE_TYPE (expr))
      && TREE_CODE (TREE_TYPE (expr)) != ARRAY_TYPE)
    error ("expression statement has incomplete type");




  if (!STATEMENT_LIST_STMT_EXPR (cur_stmt_list)
      && (extra_warnings || warn_unused_value))
    emit_side_effect_warnings (expr);



  if (DECL_P (expr) || CONSTANT_CLASS_P (expr))
    expr = build1 (NOP_EXPR, TREE_TYPE (expr), expr);

  if (EXPR_P (expr))
    SET_EXPR_LOCATION (expr, input_location);

  return expr;
}
