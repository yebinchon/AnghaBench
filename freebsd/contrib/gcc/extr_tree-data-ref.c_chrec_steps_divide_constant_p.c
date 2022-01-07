
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;

 int TREE_CODE (int ) ;
 int evolution_function_is_constant_p (int ) ;
 int tree_fold_divides_p (int ,int ) ;

__attribute__((used)) static bool
chrec_steps_divide_constant_p (tree chrec,
          tree cst,
          bool *res)
{
  switch (TREE_CODE (chrec))
    {
    case 128:
      if (evolution_function_is_constant_p (CHREC_RIGHT (chrec)))
 {
   if (tree_fold_divides_p (CHREC_RIGHT (chrec), cst))

     return chrec_steps_divide_constant_p (CHREC_LEFT (chrec), cst, res);

   *res = 0;
   return 1;
 }
      else

 return 0;

    default:

      return 1;
    }
}
