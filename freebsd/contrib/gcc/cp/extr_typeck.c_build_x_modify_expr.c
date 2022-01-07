
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef scalar_t__ TREE_NO_WARNING ;


 scalar_t__ COMPONENT_REF ;
 int COMPOUND_EXPR ;
 scalar_t__ COPYABLE_BYREF_LOCAL_VAR (scalar_t__) ;
 scalar_t__ INDIRECT_REF ;
 int LOOKUP_NORMAL ;
 int MODIFY_EXPR ;
 int MODOP_EXPR ;
 int NOP_EXPR ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_min_nt (int,scalar_t__,scalar_t__,...) ;
 scalar_t__ build_modify_expr (scalar_t__,int,scalar_t__) ;
 scalar_t__ build_new_op (int ,int ,scalar_t__,scalar_t__,int ,int *) ;
 int make_node (int) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ save_expr (scalar_t__) ;

tree
build_x_modify_expr (tree lhs, enum tree_code modifycode, tree rhs)
{

  bool insert_sequence_point = 0;

  if (processing_template_decl)
    return build_min_nt (MODOP_EXPR, lhs,
    build_min_nt (modifycode, NULL_TREE, NULL_TREE), rhs);
  if (TREE_CODE (lhs) == COMPONENT_REF)
    {
      tree inner = TREE_OPERAND (lhs, 0);

      if (TREE_CODE (inner) == INDIRECT_REF)
 {
   inner = TREE_OPERAND (inner, 0);
   if (TREE_CODE (inner) == COMPONENT_REF)
     {
       inner = TREE_OPERAND (inner, 0);
       if (TREE_CODE (inner) == VAR_DECL
    && COPYABLE_BYREF_LOCAL_VAR (inner))
  {
    tree old_rhs = rhs;

    rhs = save_expr (rhs);
    if (rhs != old_rhs)

      insert_sequence_point = 1;
  }
     }
 }
    }


  if (modifycode != NOP_EXPR)
    {
      tree rval = build_new_op (MODIFY_EXPR, LOOKUP_NORMAL, lhs, rhs,
    make_node (modifycode),
                     ((void*)0));
      if (rval)
 {

   if (insert_sequence_point)
     rval = build2 (COMPOUND_EXPR, TREE_TYPE (rval), rhs, rval);

   TREE_NO_WARNING (rval) = 1;
   return rval;
 }
    }
  lhs = build_modify_expr (lhs, modifycode, rhs);

  if (insert_sequence_point)
    lhs = build2 (COMPOUND_EXPR, TREE_TYPE (lhs), rhs, lhs);

  return lhs;
}
