
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;
 scalar_t__ TYPE_PTR_P (int ) ;
 scalar_t__ TYPE_PTR_TO_MEMBER_P (int ) ;
 int build_nop (int ,int ) ;
 scalar_t__ comp_ptr_ttypes (int ,int ) ;
 int error_mark_node ;
 scalar_t__ same_type_p (int ,int ) ;

tree
perform_qualification_conversions (tree type, tree expr)
{
  tree expr_type;

  expr_type = TREE_TYPE (expr);

  if (same_type_p (type, expr_type))
    return expr;
  else if (TYPE_PTR_P (type) && TYPE_PTR_P (expr_type)
    && comp_ptr_ttypes (TREE_TYPE (type), TREE_TYPE (expr_type)))
    return build_nop (type, expr);
  else if (TYPE_PTR_TO_MEMBER_P (type)
    && TYPE_PTR_TO_MEMBER_P (expr_type)
    && same_type_p (TYPE_PTRMEM_CLASS_TYPE (type),
      TYPE_PTRMEM_CLASS_TYPE (expr_type))
    && comp_ptr_ttypes (TYPE_PTRMEM_POINTED_TO_TYPE (type),
          TYPE_PTRMEM_POINTED_TO_TYPE (expr_type)))
    return build_nop (type, expr);
  else
    return error_mark_node;
}
