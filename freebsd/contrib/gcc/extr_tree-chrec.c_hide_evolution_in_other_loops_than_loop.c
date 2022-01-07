
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 unsigned int CHREC_VARIABLE (int ) ;

 int TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 int build_polynomial_chrec (unsigned int,int ,int ) ;
 int initial_condition (int ) ;

tree
hide_evolution_in_other_loops_than_loop (tree chrec,
      unsigned loop_num)
{
  if (automatically_generated_chrec_p (chrec))
    return chrec;

  switch (TREE_CODE (chrec))
    {
    case 128:
      if (CHREC_VARIABLE (chrec) == loop_num)
 return build_polynomial_chrec
   (loop_num,
    hide_evolution_in_other_loops_than_loop (CHREC_LEFT (chrec),
          loop_num),
    CHREC_RIGHT (chrec));

      else if (CHREC_VARIABLE (chrec) < loop_num)

 return initial_condition (chrec);

      else
 return hide_evolution_in_other_loops_than_loop (CHREC_LEFT (chrec),
       loop_num);

    default:
      return chrec;
    }
}
