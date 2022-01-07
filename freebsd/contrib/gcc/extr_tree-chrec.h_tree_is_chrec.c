
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;

__attribute__((used)) static inline bool
tree_is_chrec (tree expr)
{
  if (TREE_CODE (expr) == POLYNOMIAL_CHREC
      || automatically_generated_chrec_p (expr))
    return 1;
  else
    return 0;
}
