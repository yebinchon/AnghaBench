
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {scalar_t__ value; void* original_code; } ;


 int COMPOUND_EXPR ;
 int C_TYPE_VARIABLE_SIZE (int ) ;
 void* ERROR_MARK ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ c_sizeof (int ) ;
 scalar_t__ c_vla_type_p (int ) ;
 scalar_t__ error_mark_node ;
 int pop_maybe_used (int) ;

struct c_expr
c_expr_sizeof_expr (struct c_expr expr)
{
  struct c_expr ret;
  if (expr.value == error_mark_node)
    {
      ret.value = error_mark_node;
      ret.original_code = ERROR_MARK;
      pop_maybe_used (0);
    }
  else
    {
      ret.value = c_sizeof (TREE_TYPE (expr.value));
      ret.original_code = ERROR_MARK;
      if (c_vla_type_p (TREE_TYPE (expr.value)))
 {

   ret.value = build2 (COMPOUND_EXPR, TREE_TYPE (ret.value), expr.value, ret.value);
 }
      pop_maybe_used (C_TYPE_VARIABLE_SIZE (TREE_TYPE (expr.value)));
    }
  return ret;
}
