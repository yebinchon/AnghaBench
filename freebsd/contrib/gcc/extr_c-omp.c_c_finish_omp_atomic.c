
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ ADDR_EXPR ;
 int INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ MODIFY_EXPR ;
 int OMP_ATOMIC ;
 int POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ SAVE_EXPR ;
 int SCALAR_FLOAT_TYPE_P (scalar_t__) ;
 int TARGET_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build4 (int ,scalar_t__,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ build_indirect_ref (scalar_t__,int *) ;
 scalar_t__ build_modify_expr (scalar_t__,int,scalar_t__) ;
 scalar_t__ build_unary_op (scalar_t__,scalar_t__,int ) ;
 scalar_t__ create_tmp_var_raw (scalar_t__,int *) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ save_expr (scalar_t__) ;
 int void_type_node ;

tree
c_finish_omp_atomic (enum tree_code code, tree lhs, tree rhs)
{
  tree x, type, addr;

  if (lhs == error_mark_node || rhs == error_mark_node)
    return error_mark_node;





  type = TREE_TYPE (lhs);
  if (!INTEGRAL_TYPE_P (type)
      && !POINTER_TYPE_P (type)
      && !SCALAR_FLOAT_TYPE_P (type))
    {
      error ("invalid expression type for %<#pragma omp atomic%>");
      return error_mark_node;
    }





  addr = build_unary_op (ADDR_EXPR, lhs, 0);
  if (addr == error_mark_node)
    return error_mark_node;
  addr = save_expr (addr);
  if (TREE_CODE (addr) != SAVE_EXPR
      && (TREE_CODE (addr) != ADDR_EXPR
   || TREE_CODE (TREE_OPERAND (addr, 0)) != VAR_DECL))
    {


      tree var = create_tmp_var_raw (TREE_TYPE (addr), ((void*)0));
      addr = build4 (TARGET_EXPR, TREE_TYPE (addr), var, addr, ((void*)0), ((void*)0));
    }
  lhs = build_indirect_ref (addr, ((void*)0));




  x = build_modify_expr (lhs, code, rhs);
  if (x == error_mark_node)
    return error_mark_node;
  gcc_assert (TREE_CODE (x) == MODIFY_EXPR);
  rhs = TREE_OPERAND (x, 1);


  return build2 (OMP_ATOMIC, void_type_node, addr, rhs);
}
