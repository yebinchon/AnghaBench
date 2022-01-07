
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;




 int const INTEGER_TYPE ;






 int const TREE_CODE (int ) ;
 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_OVERFLOW (int ) ;
 int TREE_TYPE (int ) ;
 int const TRUNC_MOD_EXPR ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int const_binop (int const,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_pow2p (int ) ;
 int integer_zerop (int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int size_one_node ;
 int tree_int_cst_sgn (int ) ;

__attribute__((used)) static int
multiple_of_p (tree type, tree top, tree bottom)
{
  if (operand_equal_p (top, bottom, 0))
    return 1;

  if (TREE_CODE (type) != INTEGER_TYPE)
    return 0;

  switch (TREE_CODE (top))
    {
    case 135:


      if (!integer_pow2p (bottom))
 return 0;


    case 131:
      return (multiple_of_p (type, TREE_OPERAND (top, 0), bottom)
       || multiple_of_p (type, TREE_OPERAND (top, 1), bottom));

    case 129:
    case 132:
      return (multiple_of_p (type, TREE_OPERAND (top, 0), bottom)
       && multiple_of_p (type, TREE_OPERAND (top, 1), bottom));

    case 133:
      if (TREE_CODE (TREE_OPERAND (top, 1)) == 134)
 {
   tree op1, t1;

   op1 = TREE_OPERAND (top, 1);


   if (TYPE_PRECISION (TREE_TYPE (size_one_node))
       > TREE_INT_CST_LOW (op1)
       && TREE_INT_CST_HIGH (op1) == 0
       && 0 != (t1 = fold_convert (type,
       const_binop (133,
             size_one_node,
             op1, 0)))
       && ! TREE_OVERFLOW (t1))
     return multiple_of_p (type, t1, bottom);
 }
      return 0;

    case 130:

      if ((TREE_CODE (TREE_TYPE (TREE_OPERAND (top, 0))) != INTEGER_TYPE)
   || (TYPE_PRECISION (type)
       < TYPE_PRECISION (TREE_TYPE (TREE_OPERAND (top, 0)))))
 return 0;



    case 128:
      return multiple_of_p (type, TREE_OPERAND (top, 0), bottom);

    case 134:
      if (TREE_CODE (bottom) != 134
   || (TYPE_UNSIGNED (type)
       && (tree_int_cst_sgn (top) < 0
    || tree_int_cst_sgn (bottom) < 0)))
 return 0;
      return integer_zerop (const_binop (TRUNC_MOD_EXPR,
      top, bottom, 0));

    default:
      return 0;
    }
}
