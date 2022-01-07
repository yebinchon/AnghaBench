
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int PLUS_EXPR ;
 scalar_t__ PTRMEM_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int build_nop (int ,int ) ;
 int build_ptrmemfunc (int ,int ,int,int) ;
 int cp_build_binary_op (int ,int ,int ) ;
 int cplus_expand_constant (int ) ;
 int get_delta_difference (int ,int ,int,int) ;
 int integer_zerop (int ) ;
 int ptrdiff_type_node ;

tree
convert_ptrmem (tree type, tree expr, bool allow_inverse_p,
  bool c_cast_p)
{
  if (TYPE_PTRMEM_P (type))
    {
      tree delta;

      if (TREE_CODE (expr) == PTRMEM_CST)
 expr = cplus_expand_constant (expr);
      delta = get_delta_difference (TYPE_PTRMEM_CLASS_TYPE (TREE_TYPE (expr)),
        TYPE_PTRMEM_CLASS_TYPE (type),
        allow_inverse_p,
        c_cast_p);
      if (!integer_zerop (delta))
 expr = cp_build_binary_op (PLUS_EXPR,
       build_nop (ptrdiff_type_node, expr),
       delta);
      return build_nop (type, expr);
    }
  else
    return build_ptrmemfunc (TYPE_PTRMEMFUNC_FN_TYPE (type), expr,
        allow_inverse_p, c_cast_p);
}
