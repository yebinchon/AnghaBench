
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_VARIABLE (int ) ;

 int TREE_CODE (int ) ;
 scalar_t__ evolution_function_is_constant_p (int ) ;
 scalar_t__ evolution_function_is_univariate_p (int ) ;

__attribute__((used)) static bool
siv_subscript_p (tree chrec_a,
   tree chrec_b)
{
  if ((evolution_function_is_constant_p (chrec_a)
       && evolution_function_is_univariate_p (chrec_b))
      || (evolution_function_is_constant_p (chrec_b)
   && evolution_function_is_univariate_p (chrec_a)))
    return 1;

  if (evolution_function_is_univariate_p (chrec_a)
      && evolution_function_is_univariate_p (chrec_b))
    {
      switch (TREE_CODE (chrec_a))
 {
 case 128:
   switch (TREE_CODE (chrec_b))
     {
     case 128:
       if (CHREC_VARIABLE (chrec_a) != CHREC_VARIABLE (chrec_b))
  return 0;

     default:
       return 1;
     }

 default:
   return 1;
 }
    }

  return 0;
}
