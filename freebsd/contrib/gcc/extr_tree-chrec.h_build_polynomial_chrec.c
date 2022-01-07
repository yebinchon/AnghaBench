
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int NULL_TREE ;
 int POLYNOMIAL_CHREC ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build3 (int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int build_int_cst (int ,unsigned int) ;
 scalar_t__ chrec_dont_know ;
 int gcc_assert (int) ;

__attribute__((used)) static inline tree
build_polynomial_chrec (unsigned loop_num,
   tree left,
   tree right)
{
  if (left == chrec_dont_know
      || right == chrec_dont_know)
    return chrec_dont_know;

  gcc_assert (TREE_TYPE (left) == TREE_TYPE (right));

  return build3 (POLYNOMIAL_CHREC, TREE_TYPE (left),
   build_int_cst (NULL_TREE, loop_num), left, right);
}
