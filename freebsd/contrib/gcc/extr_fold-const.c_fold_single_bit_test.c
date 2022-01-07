
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* type_for_mode ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 scalar_t__ BIT_AND_EXPR ;
 int BIT_XOR_EXPR ;
 int EQ_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ LOAD_EXTEND_OP (int) ;
 int NE_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RSHIFT_EXPR ;
 scalar_t__ SIGN_EXTEND ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_INT_CST_HIGH (scalar_t__) ;
 scalar_t__ TREE_INT_CST_LOW (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 scalar_t__ build2 (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ compare_tree_int (scalar_t__,int) ;
 int flag_syntax_only ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ fold_single_bit_test_into_sign_test (int,scalar_t__,scalar_t__,scalar_t__) ;
 int integer_one_node ;
 scalar_t__ integer_pow2p (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 int size_int (int) ;
 scalar_t__ stub1 (int,int) ;
 scalar_t__ stub2 (int,int) ;
 int tree_log2 (scalar_t__) ;

tree
fold_single_bit_test (enum tree_code code, tree arg0, tree arg1,
        tree result_type)
{

  if ((code == NE_EXPR || code == EQ_EXPR)
      && TREE_CODE (arg0) == BIT_AND_EXPR && integer_zerop (arg1)
      && integer_pow2p (TREE_OPERAND (arg0, 1)))
    {
      tree inner = TREE_OPERAND (arg0, 0);
      tree type = TREE_TYPE (arg0);
      int bitnum = tree_log2 (TREE_OPERAND (arg0, 1));
      enum machine_mode operand_mode = TYPE_MODE (type);
      int ops_unsigned;
      tree signed_type, unsigned_type, intermediate_type;
      tree tem;



      tem = fold_single_bit_test_into_sign_test (code, arg0, arg1,
       result_type);
      if (tem)
 return tem;







      if (TREE_CODE (inner) == RSHIFT_EXPR
   && TREE_CODE (TREE_OPERAND (inner, 1)) == INTEGER_CST
   && TREE_INT_CST_HIGH (TREE_OPERAND (inner, 1)) == 0
   && bitnum < TYPE_PRECISION (type)
   && 0 > compare_tree_int (TREE_OPERAND (inner, 1),
       bitnum - TYPE_PRECISION (type)))
 {
   bitnum += TREE_INT_CST_LOW (TREE_OPERAND (inner, 1));
   inner = TREE_OPERAND (inner, 0);
 }
      ops_unsigned = 1;


      signed_type = lang_hooks.types.type_for_mode (operand_mode, 0);
      unsigned_type = lang_hooks.types.type_for_mode (operand_mode, 1);
      intermediate_type = ops_unsigned ? unsigned_type : signed_type;
      inner = fold_convert (intermediate_type, inner);

      if (bitnum != 0)
 inner = build2 (RSHIFT_EXPR, intermediate_type,
   inner, size_int (bitnum));

      if (code == EQ_EXPR)
 inner = fold_build2 (BIT_XOR_EXPR, intermediate_type,
        inner, integer_one_node);


      inner = build2 (BIT_AND_EXPR, intermediate_type,
        inner, integer_one_node);


      inner = fold_convert (result_type, inner);

      return inner;
    }
  return NULL_TREE;
}
