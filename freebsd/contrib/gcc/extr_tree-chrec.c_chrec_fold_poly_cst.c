
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int CHREC_LEFT (scalar_t__) ;
 int CHREC_RIGHT (scalar_t__) ;
 int CHREC_VARIABLE (scalar_t__) ;



 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ build_polynomial_chrec (int ,int ,int ) ;
 scalar_t__ chrec_dont_know ;
 int chrec_fold_minus (scalar_t__,int ,scalar_t__) ;
 int chrec_fold_multiply (scalar_t__,int ,scalar_t__) ;
 int chrec_fold_plus (scalar_t__,int ,scalar_t__) ;
 scalar_t__ chrec_type (scalar_t__) ;
 int gcc_assert (int) ;
 int is_not_constant_evolution (scalar_t__) ;

__attribute__((used)) static inline tree
chrec_fold_poly_cst (enum tree_code code,
       tree type,
       tree poly,
       tree cst)
{
  gcc_assert (poly);
  gcc_assert (cst);
  gcc_assert (TREE_CODE (poly) == POLYNOMIAL_CHREC);
  gcc_assert (!is_not_constant_evolution (cst));
  gcc_assert (type == chrec_type (poly));

  switch (code)
    {
    case 128:
      return build_polynomial_chrec
 (CHREC_VARIABLE (poly),
  chrec_fold_plus (type, CHREC_LEFT (poly), cst),
  CHREC_RIGHT (poly));

    case 130:
      return build_polynomial_chrec
 (CHREC_VARIABLE (poly),
  chrec_fold_minus (type, CHREC_LEFT (poly), cst),
  CHREC_RIGHT (poly));

    case 129:
      return build_polynomial_chrec
 (CHREC_VARIABLE (poly),
  chrec_fold_multiply (type, CHREC_LEFT (poly), cst),
  chrec_fold_multiply (type, CHREC_RIGHT (poly), cst));

    default:
      return chrec_dont_know;
    }
}
