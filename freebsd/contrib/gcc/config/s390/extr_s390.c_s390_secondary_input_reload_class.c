
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ADDR_REGS ;
 int CC_REGS ;
 scalar_t__ CONST_INT ;
 int DISP_IN_RANGE (scalar_t__) ;
 int FP_REGS ;
 int GENERAL_REGS ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ MEM ;
 int NO_REGS ;
 scalar_t__ PLUS ;
 int TFmode ;
 int XEXP (int ,int) ;
 scalar_t__ reg_classes_intersect_p (int ,int) ;
 scalar_t__ s390_plus_operand (int ,int) ;

enum reg_class
s390_secondary_input_reload_class (enum reg_class class,
       enum machine_mode mode, rtx in)
{
  if (s390_plus_operand (in, mode))
    return ADDR_REGS;

  if (reg_classes_intersect_p (FP_REGS, class)
      && mode == TFmode
      && GET_CODE (in) == MEM
      && GET_CODE (XEXP (in, 0)) == PLUS
      && GET_CODE (XEXP (XEXP (in, 0), 1)) == CONST_INT
      && !DISP_IN_RANGE (INTVAL (XEXP (XEXP (in, 0), 1))
    + GET_MODE_SIZE (mode) - 1))
    return ADDR_REGS;

  if (reg_classes_intersect_p (CC_REGS, class))
    return GENERAL_REGS;

  return NO_REGS;
}
