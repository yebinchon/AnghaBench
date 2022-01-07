
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int *) ;
 scalar_t__ MINUS_EXPR ;
 scalar_t__ MULT_EXPR ;
 int NEGATE_EXPR ;
 int * NULL_TREE ;
 scalar_t__ PLUS_EXPR ;
 int POINTER_TYPE_P (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int * TREE_TYPE (int *) ;
 int * TYPE_DOMAIN (int *) ;
 int * TYPE_MIN_VALUE (int *) ;
 int * TYPE_SIZE_UNIT (int *) ;
 scalar_t__ TYPE_UNSIGNED (int *) ;
 int * build1 (scalar_t__,int *,int *) ;
 int * fold_convert (int *,int *) ;
 int * fold_unary (int ,int *,int *) ;
 int * int_const_binop (scalar_t__,int *,int *,int ) ;
 int integer_zerop (int *) ;
 int * maybe_fold_offset_to_array_ref (int *,int *,int *) ;
 int * maybe_fold_offset_to_component_ref (int *,int *,int *,int *,int) ;
 int * sizetype ;
 scalar_t__ tree_int_cst_lt (int *,int *) ;

__attribute__((used)) static tree
maybe_fold_stmt_addition (tree expr)
{
  tree op0 = TREE_OPERAND (expr, 0);
  tree op1 = TREE_OPERAND (expr, 1);
  tree ptr_type = TREE_TYPE (expr);
  tree ptd_type;
  tree t;
  bool subtract = (TREE_CODE (expr) == MINUS_EXPR);


  if (!POINTER_TYPE_P (ptr_type))
    return NULL_TREE;

  if (INTEGRAL_TYPE_P (TREE_TYPE (op0)))
    {
      if (subtract)
 return NULL_TREE;
      t = op0, op0 = op1, op1 = t;
    }

  if (TREE_CODE (op1) != INTEGER_CST)
    return NULL_TREE;

  if (TREE_CODE (op0) != ADDR_EXPR)
    return NULL_TREE;
  op0 = TREE_OPERAND (op0, 0);



  while (TREE_CODE (op0) == ARRAY_REF)
    {
      tree array_obj = TREE_OPERAND (op0, 0);
      tree array_idx = TREE_OPERAND (op0, 1);
      tree elt_type = TREE_TYPE (op0);
      tree elt_size = TYPE_SIZE_UNIT (elt_type);
      tree min_idx;

      if (TREE_CODE (array_idx) != INTEGER_CST)
 break;
      if (TREE_CODE (elt_size) != INTEGER_CST)
 break;


      min_idx = TYPE_DOMAIN (TREE_TYPE (array_obj));
      if (min_idx)
 {
   min_idx = TYPE_MIN_VALUE (min_idx);
   if (min_idx)
     {
       if (TREE_CODE (min_idx) != INTEGER_CST)
  break;

       array_idx = fold_convert (TREE_TYPE (min_idx), array_idx);
       if (!integer_zerop (min_idx))
  array_idx = int_const_binop (MINUS_EXPR, array_idx,
          min_idx, 0);
     }
 }


      array_idx = fold_convert (sizetype, array_idx);
      array_idx = int_const_binop (MULT_EXPR, array_idx, elt_size, 0);





      if (subtract
   && TYPE_UNSIGNED (TREE_TYPE (op1))
   && tree_int_cst_lt (array_idx, op1))
 return ((void*)0);
      op1 = int_const_binop (subtract ? MINUS_EXPR : PLUS_EXPR,
        array_idx, op1, 0);
      subtract = 0;
      op0 = array_obj;
    }




  if (subtract)
    {
      if (TYPE_UNSIGNED (TREE_TYPE (op1)))
 return ((void*)0);
      op1 = fold_unary (NEGATE_EXPR, TREE_TYPE (op1), op1);

      if (op1 == ((void*)0) || TREE_CODE (op1) != INTEGER_CST)
 return ((void*)0);
    }

  ptd_type = TREE_TYPE (ptr_type);


  t = maybe_fold_offset_to_array_ref (op0, op1, ptd_type);
  if (!t)
    t = maybe_fold_offset_to_component_ref (TREE_TYPE (op0), op0, op1,
         ptd_type, 0);
  if (t)
    t = build1 (ADDR_EXPR, ptr_type, t);

  return t;
}
