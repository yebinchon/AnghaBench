
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 int CHREC_VARIABLE (int ) ;
 int PARAM_SCEV_MAX_EXPR_SIZE ;
 int PARAM_VALUE (int ) ;
 int PLUS_EXPR ;

 int SCALAR_FLOAT_TYPE_P (int ) ;
 int TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 int build2 (int,int ,int ,int ) ;
 int build_int_cst_type (int ,int) ;
 int build_polynomial_chrec (int ,int ,int ) ;
 int build_real (int ,int ) ;
 int chrec_dont_know ;
 int chrec_fold_automatically_generated_operands (int ,int ) ;
 int chrec_fold_minus (int ,int ,int ) ;
 int chrec_fold_multiply (int ,int ,int ) ;
 int chrec_fold_plus (int ,int ,int ) ;
 int chrec_fold_plus_poly_poly (int,int ,int ,int ) ;
 int dconstm1 ;
 int fold_build2 (int,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int tree_contains_chrecs (int ,int*) ;

__attribute__((used)) static tree
chrec_fold_plus_1 (enum tree_code code, tree type,
     tree op0, tree op1)
{
  if (automatically_generated_chrec_p (op0)
      || automatically_generated_chrec_p (op1))
    return chrec_fold_automatically_generated_operands (op0, op1);

  switch (TREE_CODE (op0))
    {
    case 128:
      switch (TREE_CODE (op1))
 {
 case 128:
   return chrec_fold_plus_poly_poly (code, type, op0, op1);

 default:
   if (code == PLUS_EXPR)
     return build_polynomial_chrec
       (CHREC_VARIABLE (op0),
        chrec_fold_plus (type, CHREC_LEFT (op0), op1),
        CHREC_RIGHT (op0));
   else
     return build_polynomial_chrec
       (CHREC_VARIABLE (op0),
        chrec_fold_minus (type, CHREC_LEFT (op0), op1),
        CHREC_RIGHT (op0));
 }

    default:
      switch (TREE_CODE (op1))
 {
 case 128:
   if (code == PLUS_EXPR)
     return build_polynomial_chrec
       (CHREC_VARIABLE (op1),
        chrec_fold_plus (type, op0, CHREC_LEFT (op1)),
        CHREC_RIGHT (op1));
   else
     return build_polynomial_chrec
       (CHREC_VARIABLE (op1),
        chrec_fold_minus (type, op0, CHREC_LEFT (op1)),
        chrec_fold_multiply (type, CHREC_RIGHT (op1),
        SCALAR_FLOAT_TYPE_P (type)
        ? build_real (type, dconstm1)
        : build_int_cst_type (type, -1)));

 default:
   {
     int size = 0;
     if ((tree_contains_chrecs (op0, &size)
   || tree_contains_chrecs (op1, &size))
  && size < PARAM_VALUE (PARAM_SCEV_MAX_EXPR_SIZE))
       return build2 (code, type, op0, op1);
     else if (size < PARAM_VALUE (PARAM_SCEV_MAX_EXPR_SIZE))
       return fold_build2 (code, type,
      fold_convert (type, op0),
      fold_convert (type, op1));
     else
       return chrec_dont_know;
   }
 }
    }
}
