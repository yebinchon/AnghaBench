
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONSTANT_P (int ) ;
 scalar_t__ general_operand (int ,int) ;

int
nonimmediate_operand (rtx op, enum machine_mode mode)
{
  return (general_operand (op, mode) && ! CONSTANT_P (op));
}
