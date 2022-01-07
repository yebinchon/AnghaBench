
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {int value; int original_code; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ERROR_MARK ;
 scalar_t__ TREE_OVERFLOW_P (int ) ;
 int build_unary_op (int,int ,int ) ;
 int overflow_warning (int ) ;

struct c_expr
parser_build_unary_op (enum tree_code code, struct c_expr arg)
{
  struct c_expr result;

  result.original_code = ERROR_MARK;
  result.value = build_unary_op (code, arg.value, 0);

  if (TREE_OVERFLOW_P (result.value) && !TREE_OVERFLOW_P (arg.value))
    overflow_warning (result.value);

  return result;
}
