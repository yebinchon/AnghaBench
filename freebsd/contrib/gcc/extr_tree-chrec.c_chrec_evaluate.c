
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CHREC_LEFT (scalar_t__) ;
 scalar_t__ CHREC_RIGHT (scalar_t__) ;
 unsigned int CHREC_VARIABLE (scalar_t__) ;
 int MULT_EXPR ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_fold_plus (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tree_fold_binomial (scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static tree
chrec_evaluate (unsigned var, tree chrec, tree n, unsigned int k)
{
  tree arg0, arg1, binomial_n_k;
  tree type = TREE_TYPE (chrec);

  while (TREE_CODE (chrec) == POLYNOMIAL_CHREC
  && CHREC_VARIABLE (chrec) > var)
    chrec = CHREC_LEFT (chrec);

  if (TREE_CODE (chrec) == POLYNOMIAL_CHREC
      && CHREC_VARIABLE (chrec) == var)
    {
      arg0 = chrec_evaluate (var, CHREC_RIGHT (chrec), n, k + 1);
      if (arg0 == chrec_dont_know)
 return chrec_dont_know;
      binomial_n_k = tree_fold_binomial (type, n, k);
      if (!binomial_n_k)
 return chrec_dont_know;
      arg1 = fold_build2 (MULT_EXPR, type,
     CHREC_LEFT (chrec), binomial_n_k);
      return chrec_fold_plus (type, arg0, arg1);
    }

  binomial_n_k = tree_fold_binomial (type, n, k);
  if (!binomial_n_k)
    return chrec_dont_know;

  return fold_build2 (MULT_EXPR, type, chrec, binomial_n_k);
}
