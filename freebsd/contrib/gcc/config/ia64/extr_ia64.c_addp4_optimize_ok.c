
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 scalar_t__ basereg_operand (int ,int ) ;

int
addp4_optimize_ok (rtx op1, rtx op2)
{
  return (basereg_operand (op1, GET_MODE(op1)) !=
   basereg_operand (op2, GET_MODE(op2)));
}
