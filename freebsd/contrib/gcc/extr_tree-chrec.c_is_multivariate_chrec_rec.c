
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CHREC_LEFT (scalar_t__) ;
 scalar_t__ CHREC_RIGHT (scalar_t__) ;
 unsigned int CHREC_VARIABLE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (scalar_t__) ;

__attribute__((used)) static bool
is_multivariate_chrec_rec (tree chrec, unsigned int rec_var)
{
  if (chrec == NULL_TREE)
    return 0;

  if (TREE_CODE (chrec) == POLYNOMIAL_CHREC)
    {
      if (CHREC_VARIABLE (chrec) != rec_var)
 return 1;
      else
 return (is_multivariate_chrec_rec (CHREC_LEFT (chrec), rec_var)
  || is_multivariate_chrec_rec (CHREC_RIGHT (chrec), rec_var));
    }
  else
    return 0;
}
