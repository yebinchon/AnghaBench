
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 unsigned int CHREC_VARIABLE (int ) ;
 int NULL_TREE ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int build3 (scalar_t__,int ,int ,int ,int ) ;
 int build_int_cst (int ,unsigned int) ;
 int build_polynomial_chrec (unsigned int,int ,int ) ;
 scalar_t__ chrec_type (int ) ;
 int gcc_assert (int) ;

tree
reset_evolution_in_loop (unsigned loop_num,
    tree chrec,
    tree new_evol)
{
  gcc_assert (chrec_type (chrec) == chrec_type (new_evol));

  if (TREE_CODE (chrec) == POLYNOMIAL_CHREC
      && CHREC_VARIABLE (chrec) > loop_num)
    {
      tree left = reset_evolution_in_loop (loop_num, CHREC_LEFT (chrec),
        new_evol);
      tree right = reset_evolution_in_loop (loop_num, CHREC_RIGHT (chrec),
         new_evol);
      return build3 (POLYNOMIAL_CHREC, TREE_TYPE (left),
       build_int_cst (NULL_TREE, CHREC_VARIABLE (chrec)),
       left, right);
    }

  while (TREE_CODE (chrec) == POLYNOMIAL_CHREC
  && CHREC_VARIABLE (chrec) == loop_num)
    chrec = CHREC_LEFT (chrec);

  return build_polynomial_chrec (loop_num, chrec, new_evol);
}
