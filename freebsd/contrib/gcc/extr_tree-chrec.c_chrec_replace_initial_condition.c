
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 int CHREC_VARIABLE (int ) ;

 int TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 int build_polynomial_chrec (int ,int ,int ) ;
 scalar_t__ chrec_type (int ) ;
 int gcc_assert (int) ;

tree
chrec_replace_initial_condition (tree chrec,
     tree init_cond)
{
  if (automatically_generated_chrec_p (chrec))
    return chrec;

  gcc_assert (chrec_type (chrec) == chrec_type (init_cond));

  switch (TREE_CODE (chrec))
    {
    case 128:
      return build_polynomial_chrec
 (CHREC_VARIABLE (chrec),
  chrec_replace_initial_condition (CHREC_LEFT (chrec), init_cond),
  CHREC_RIGHT (chrec));

    default:
      return init_cond;
    }
}
