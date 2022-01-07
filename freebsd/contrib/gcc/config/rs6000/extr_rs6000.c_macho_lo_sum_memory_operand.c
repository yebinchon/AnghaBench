
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONSTANT_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int INT_REG_OK_FOR_BASE_P (int ,int ) ;
 scalar_t__ LO_SUM ;
 scalar_t__ MEM ;
 scalar_t__ REG ;
 int SImode ;
 int TARGET_MACHO ;
 int XEXP (int ,int) ;
 int flag_pic ;

bool
macho_lo_sum_memory_operand (rtx x, enum machine_mode mode)
{
  if (!TARGET_MACHO || !flag_pic
      || mode != SImode || GET_CODE (x) != MEM)
    return 0;
  x = XEXP (x, 0);

  if (GET_CODE (x) != LO_SUM)
    return 0;
  if (GET_CODE (XEXP (x, 0)) != REG)
    return 0;
  if (!INT_REG_OK_FOR_BASE_P (XEXP (x, 0), 0))
    return 0;
  x = XEXP (x, 1);

  return CONSTANT_P (x);
}
