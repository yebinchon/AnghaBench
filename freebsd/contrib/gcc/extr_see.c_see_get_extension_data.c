
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INSN_P (int ) ;
 int NOT_RELEVANT ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ SIGN_EXTEND ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int UNKNOWN ;
 int XEXP (int ,int ) ;
 scalar_t__ ZERO_EXTEND ;
 int single_set (int ) ;

__attribute__((used)) static enum rtx_code
see_get_extension_data (rtx extension, enum machine_mode *source_mode)
{
  rtx rhs, lhs, set;

  if (!extension || !INSN_P (extension))
    return UNKNOWN;


  if (GET_CODE (PATTERN (extension)) == PARALLEL)
    return NOT_RELEVANT;

  set = single_set (extension);
  if (!set)
    return NOT_RELEVANT;
  rhs = SET_SRC (set);
  lhs = SET_DEST (set);



  if (!REG_P (lhs) && !SUBREG_REG (lhs))
    return UNKNOWN;

  if (GET_CODE (rhs) != SIGN_EXTEND && GET_CODE (rhs) != ZERO_EXTEND)
    return UNKNOWN;

  if (!REG_P (XEXP (rhs, 0))
      && !(GET_CODE (XEXP (rhs, 0)) == SUBREG
    && REG_P (SUBREG_REG (XEXP (rhs, 0)))))
    return UNKNOWN;

  *source_mode = GET_MODE (XEXP (rhs, 0));

  if (GET_CODE (rhs) == SIGN_EXTEND)
    return SIGN_EXTEND;
  return ZERO_EXTEND;
}
