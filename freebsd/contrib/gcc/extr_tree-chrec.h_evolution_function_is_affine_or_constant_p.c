
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ evolution_function_is_affine_p (int ) ;
 scalar_t__ evolution_function_is_constant_p (int ) ;

__attribute__((used)) static inline bool
evolution_function_is_affine_or_constant_p (tree chrec)
{
  return evolution_function_is_affine_p (chrec)
    || evolution_function_is_constant_p (chrec);
}
