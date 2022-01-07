
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CHREC_LEFT (scalar_t__) ;
 int CHREC_RIGHT (scalar_t__) ;
 int CHREC_VARIABLE (scalar_t__) ;
 scalar_t__ NULL_TREE ;

 int TREE_CODE (scalar_t__) ;
 int evolution_function_is_invariant_p (int ,int ) ;

__attribute__((used)) static inline bool
evolution_function_is_affine_p (tree chrec)
{
  if (chrec == NULL_TREE)
    return 0;

  switch (TREE_CODE (chrec))
    {
    case 128:
      if (evolution_function_is_invariant_p (CHREC_LEFT (chrec),
          CHREC_VARIABLE (chrec))
   && evolution_function_is_invariant_p (CHREC_RIGHT (chrec),
      CHREC_VARIABLE (chrec)))
 return 1;
      else
 return 0;

    default:
      return 0;
    }
}
