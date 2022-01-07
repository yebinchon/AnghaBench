
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int is_overflow_infinity (scalar_t__) ;
 int operand_equal_p (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static inline bool
vrp_operand_equal_p (tree val1, tree val2)
{
  if (val1 == val2)
    return 1;
  if (!val1 || !val2 || !operand_equal_p (val1, val2, 0))
    return 0;
  if (is_overflow_infinity (val1))
    return is_overflow_infinity (val2);
  return 1;
}
