
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int MULT_EXPR ;
 scalar_t__ SUBSTITUTE_PLACEHOLDER_IN_EXPR (int ,scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ALIGN_UNIT (scalar_t__) ;
 int TYPE_SIZE_UNIT (scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ size_binop (int ,scalar_t__,int ) ;
 int size_int (int ) ;
 scalar_t__ sizetype ;

tree
array_ref_element_size (tree exp)
{
  tree aligned_size = TREE_OPERAND (exp, 3);
  tree elmt_type = TREE_TYPE (TREE_TYPE (TREE_OPERAND (exp, 0)));



  if (aligned_size)
    {


      if (TREE_TYPE (aligned_size) != sizetype)
 aligned_size = fold_convert (sizetype, aligned_size);
      return size_binop (MULT_EXPR, aligned_size,
           size_int (TYPE_ALIGN_UNIT (elmt_type)));
    }



  else
    return SUBSTITUTE_PLACEHOLDER_IN_EXPR (TYPE_SIZE_UNIT (elmt_type), exp);
}
