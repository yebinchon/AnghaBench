
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ commutative_operand_precedence (int ) ;

int
swap_commutative_operands_p (rtx x, rtx y)
{
  return (commutative_operand_precedence (x)
   < commutative_operand_precedence (y));
}
