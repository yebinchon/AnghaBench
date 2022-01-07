
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_DOUBLE_OK_FOR_CONSTRAINT_P (int ,char,char*) ;
 scalar_t__ CONST_INT ;
 scalar_t__ CONST_OK_FOR_K (scalar_t__) ;
 scalar_t__ CONST_OK_FOR_Os (scalar_t__) ;
 scalar_t__ DISP_IN_RANGE (scalar_t__) ;
 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ HImode ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ SImode ;
 scalar_t__ TARGET_CPU_ZARCH ;
 scalar_t__ TARGET_EXTIMM ;
 scalar_t__ TARGET_ZARCH ;
 int TImode ;
 int VOIDmode ;
 scalar_t__ larl_operand (int ,int ) ;
 int operand_subword (int ,int,int ,int) ;
 scalar_t__ s390_single_part (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ trunc_int_for_mode (scalar_t__,scalar_t__) ;
 scalar_t__ word_mode ;

bool
legitimate_reload_constant_p (rtx op)
{

  if (GET_CODE (op) == CONST_INT
      && DISP_IN_RANGE (INTVAL (op)))
    return 1;


  if (GET_CODE (op) == CONST_INT
      && (CONST_OK_FOR_K (INTVAL (op)) || CONST_OK_FOR_Os (INTVAL (op))))
    return 1;


  if (TARGET_ZARCH
      && GET_CODE (op) == CONST_INT
      && trunc_int_for_mode (INTVAL (op), word_mode) == INTVAL (op)
      && s390_single_part (op, word_mode, HImode, 0) >= 0)
  return 1;

  if (TARGET_EXTIMM
      && GET_CODE (op) == CONST_INT
      && trunc_int_for_mode (INTVAL (op), word_mode) == INTVAL (op)
      && s390_single_part (op, word_mode, SImode, 0) >= 0)
    return 1;


  if (TARGET_CPU_ZARCH
      && larl_operand (op, VOIDmode))
    return 1;


  if (GET_CODE (op) == CONST_DOUBLE
      && CONST_DOUBLE_OK_FOR_CONSTRAINT_P (op, 'G', "G"))
    return 1;


  if (GET_CODE (op) == CONST_INT
      && trunc_int_for_mode (INTVAL (op), word_mode) != INTVAL (op))
    {
      enum machine_mode dword_mode = word_mode == SImode ? DImode : TImode;
      rtx hi = operand_subword (op, 0, 0, dword_mode);
      rtx lo = operand_subword (op, 1, 0, dword_mode);
      return legitimate_reload_constant_p (hi)
      && legitimate_reload_constant_p (lo);
    }


  return 0;
}
