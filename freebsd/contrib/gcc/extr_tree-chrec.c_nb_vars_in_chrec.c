
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CHREC_VARIABLE (scalar_t__) ;
 scalar_t__ NULL_TREE ;

 int TREE_CODE (scalar_t__) ;
 scalar_t__ initial_condition_in_loop_num (scalar_t__,int ) ;

unsigned
nb_vars_in_chrec (tree chrec)
{
  if (chrec == NULL_TREE)
    return 0;

  switch (TREE_CODE (chrec))
    {
    case 128:
      return 1 + nb_vars_in_chrec
 (initial_condition_in_loop_num (chrec, CHREC_VARIABLE (chrec)));

    default:
      return 0;
    }
}
