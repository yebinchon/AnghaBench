
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* signed_type ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 scalar_t__ BIT_AND_EXPR ;
 int EQ_EXPR ;
 scalar_t__ GET_MODE_BITSIZE (int ) ;
 int GE_EXPR ;
 int LT_EXPR ;
 int NE_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_MODE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 int build_int_cst (scalar_t__,int ) ;
 scalar_t__ fold_build2 (int ,scalar_t__,int ,int ) ;
 int fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ integer_pow2p (int ) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ sign_bit_p (int ,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static tree
fold_single_bit_test_into_sign_test (enum tree_code code, tree arg0, tree arg1,
         tree result_type)
{

  if ((code == NE_EXPR || code == EQ_EXPR)
      && TREE_CODE (arg0) == BIT_AND_EXPR && integer_zerop (arg1)
      && integer_pow2p (TREE_OPERAND (arg0, 1)))
    {


      tree arg00 = sign_bit_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg0, 1));

      if (arg00 != NULL_TREE


   && TYPE_PRECISION (TREE_TYPE (arg00))
      == GET_MODE_BITSIZE (TYPE_MODE (TREE_TYPE (arg00))))
 {
   tree stype = lang_hooks.types.signed_type (TREE_TYPE (arg00));
   return fold_build2 (code == EQ_EXPR ? GE_EXPR : LT_EXPR,
         result_type, fold_convert (stype, arg00),
         build_int_cst (stype, 0));
 }
    }

  return NULL_TREE;
}
