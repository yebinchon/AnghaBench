
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum prediction { ____Placeholder_prediction } prediction ;
typedef enum br_predictor { ____Placeholder_br_predictor } br_predictor ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int NOT_TAKEN ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 int PRED_NEGATIVE_RETURN ;
 int PRED_NO_PREDICTION ;
 int PRED_NULL_RETURN ;
 int TAKEN ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CONSTANT (int ) ;
 int TREE_TYPE (int ) ;
 int integer_onep (int ) ;
 scalar_t__ integer_zerop (int ) ;
 scalar_t__ tree_int_cst_sgn (int ) ;

__attribute__((used)) static enum br_predictor
return_prediction (tree val, enum prediction *prediction)
{

  if (!val)
    return PRED_NO_PREDICTION;

  if (POINTER_TYPE_P (TREE_TYPE (val)))
    {

      if (integer_zerop (val))
 {
   *prediction = NOT_TAKEN;
   return PRED_NULL_RETURN;
 }
    }
  else if (INTEGRAL_TYPE_P (TREE_TYPE (val)))
    {


      if (TREE_CODE (val) == INTEGER_CST
   && tree_int_cst_sgn (val) < 0)
 {
   *prediction = NOT_TAKEN;
   return PRED_NEGATIVE_RETURN;
 }



      if (TREE_CONSTANT (val)
   && (!integer_zerop (val) && !integer_onep (val)))
 {
   *prediction = TAKEN;
   return PRED_NEGATIVE_RETURN;
 }
    }
  return PRED_NO_PREDICTION;
}
