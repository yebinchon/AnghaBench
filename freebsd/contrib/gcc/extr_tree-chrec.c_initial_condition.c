
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;

tree
initial_condition (tree chrec)
{
  if (automatically_generated_chrec_p (chrec))
    return chrec;

  if (TREE_CODE (chrec) == POLYNOMIAL_CHREC)
    return initial_condition (CHREC_LEFT (chrec));
  else
    return chrec;
}
