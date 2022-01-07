
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BITS_PER_UNIT ;
 int BIT_AND_EXPR ;
 scalar_t__ INTEGER_TYPE ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_ALIGN (int ) ;
 int TYPE_MODE (int ) ;
 int UNITS_PER_WORD ;
 int build2 (int ,int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 int build_pointer_type (int ) ;
 int build_va_arg_indirect_ref (int ) ;
 int gimplify_and_add (int ,int *) ;
 int int_size_in_bytes (int ) ;
 scalar_t__ pass_by_reference (int *,int ,int ,int) ;
 int std_gimplify_va_arg_expr (int ,int ,int *,int *) ;

__attribute__((used)) static tree
ia64_gimplify_va_arg (tree valist, tree type, tree *pre_p, tree *post_p)
{

  if (pass_by_reference (((void*)0), TYPE_MODE (type), type, 0))
    {
      tree ptrtype = build_pointer_type (type);
      tree addr = std_gimplify_va_arg_expr (valist, ptrtype, pre_p, post_p);
      return build_va_arg_indirect_ref (addr);
    }





  if ((TREE_CODE (type) == REAL_TYPE || TREE_CODE (type) == INTEGER_TYPE)
      ? int_size_in_bytes (type) > 8 : TYPE_ALIGN (type) > 8 * BITS_PER_UNIT)
    {
      tree t = build2 (PLUS_EXPR, TREE_TYPE (valist), valist,
         build_int_cst (NULL_TREE, 2 * UNITS_PER_WORD - 1));
      t = build2 (BIT_AND_EXPR, TREE_TYPE (t), t,
    build_int_cst (NULL_TREE, -2 * UNITS_PER_WORD));
      t = build2 (MODIFY_EXPR, TREE_TYPE (valist), valist, t);
      gimplify_and_add (t, pre_p);
    }

  return std_gimplify_va_arg_expr (valist, type, pre_p, post_p);
}
