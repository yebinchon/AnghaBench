
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ evolution_function_is_constant_p (int ) ;

__attribute__((used)) static inline bool
ziv_subscript_p (tree chrec_a,
   tree chrec_b)
{
  return (evolution_function_is_constant_p (chrec_a)
   && evolution_function_is_constant_p (chrec_b));
}
