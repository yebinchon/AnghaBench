
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BITS_PER_UNIT ;
 int DECL_FIELD_OFFSET (scalar_t__) ;
 int DECL_OFFSET_ALIGN (scalar_t__) ;
 int MULT_EXPR ;
 scalar_t__ SUBSTITUTE_PLACEHOLDER_IN_EXPR (int ,scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ size_binop (int ,scalar_t__,int ) ;
 int size_int (int) ;
 scalar_t__ sizetype ;

tree
component_ref_field_offset (tree exp)
{
  tree aligned_offset = TREE_OPERAND (exp, 2);
  tree field = TREE_OPERAND (exp, 1);




  if (aligned_offset)
    {


      if (TREE_TYPE (aligned_offset) != sizetype)
 aligned_offset = fold_convert (sizetype, aligned_offset);
      return size_binop (MULT_EXPR, aligned_offset,
           size_int (DECL_OFFSET_ALIGN (field) / BITS_PER_UNIT));
    }



  else
    return SUBSTITUTE_PLACEHOLDER_IN_EXPR (DECL_FIELD_OFFSET (field), exp);
}
