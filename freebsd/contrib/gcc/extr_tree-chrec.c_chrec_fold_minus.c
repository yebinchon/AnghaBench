
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MINUS_EXPR ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 int chrec_fold_automatically_generated_operands (int ,int ) ;
 int chrec_fold_plus_1 (int ,int ,int ,int ) ;
 scalar_t__ integer_zerop (int ) ;

tree
chrec_fold_minus (tree type,
    tree op0,
    tree op1)
{
  if (automatically_generated_chrec_p (op0)
      || automatically_generated_chrec_p (op1))
    return chrec_fold_automatically_generated_operands (op0, op1);

  if (integer_zerop (op1))
    return op0;

  return chrec_fold_plus_1 (MINUS_EXPR, type, op0, op1);
}
