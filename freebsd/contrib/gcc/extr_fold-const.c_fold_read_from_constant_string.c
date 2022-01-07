
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ GET_MODE_CLASS (scalar_t__) ;
 int GET_MODE_SIZE (scalar_t__) ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ MODE_INT ;
 int NULL_TREE ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int *) ;
 size_t TREE_INT_CST_LOW (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int TREE_STRING_LENGTH (int *) ;
 int * TREE_STRING_POINTER (int *) ;
 int * TREE_TYPE (int *) ;
 scalar_t__ TYPE_MODE (int *) ;
 int * array_ref_low_bound (int *) ;
 int * build_int_cst (int ,int ) ;
 scalar_t__ compare_tree_int (int *,int ) ;
 int * fold_convert (int *,int *) ;
 int integer_zerop (int *) ;
 int * size_diffop (int *,int *) ;
 int * sizetype ;
 int * string_constant (int *,int **) ;

tree
fold_read_from_constant_string (tree exp)
{
  if ((TREE_CODE (exp) == INDIRECT_REF
       || TREE_CODE (exp) == ARRAY_REF)
      && TREE_CODE (TREE_TYPE (exp)) == INTEGER_TYPE)
    {
      tree exp1 = TREE_OPERAND (exp, 0);
      tree index;
      tree string;

      if (TREE_CODE (exp) == INDIRECT_REF)
 string = string_constant (exp1, &index);
      else
 {
   tree low_bound = array_ref_low_bound (exp);
   index = fold_convert (sizetype, TREE_OPERAND (exp, 1));
   if (! integer_zerop (low_bound))
     index = size_diffop (index, fold_convert (sizetype, low_bound));

   string = exp1;
 }

      if (string
   && TYPE_MODE (TREE_TYPE (exp)) == TYPE_MODE (TREE_TYPE (TREE_TYPE (string)))
   && TREE_CODE (string) == STRING_CST
   && TREE_CODE (index) == INTEGER_CST
   && compare_tree_int (index, TREE_STRING_LENGTH (string)) < 0
   && (GET_MODE_CLASS (TYPE_MODE (TREE_TYPE (TREE_TYPE (string))))
       == MODE_INT)
   && (GET_MODE_SIZE (TYPE_MODE (TREE_TYPE (TREE_TYPE (string)))) == 1))
 return fold_convert (TREE_TYPE (exp),
        build_int_cst (NULL_TREE,
         (TREE_STRING_POINTER (string)
          [TREE_INT_CST_LOW (index)])));
    }
  return ((void*)0);
}
