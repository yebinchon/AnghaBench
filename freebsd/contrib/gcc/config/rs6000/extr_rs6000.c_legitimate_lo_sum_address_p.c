
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ABI_AIX ;
 scalar_t__ ABI_DARWIN ;
 int CONSTANT_P (int ) ;
 scalar_t__ DEFAULT_ABI ;
 int DFmode ;
 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_NUNITS (int) ;
 int INT_REG_OK_FOR_BASE_P (int ,int) ;
 scalar_t__ LO_SUM ;
 scalar_t__ REG ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_ELF ;
 scalar_t__ TARGET_FPRS ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_MACHO ;
 int TARGET_POWERPC64 ;
 scalar_t__ TARGET_TOC ;
 int XEXP (int ,int) ;
 scalar_t__ flag_pic ;

__attribute__((used)) static bool
legitimate_lo_sum_address_p (enum machine_mode mode, rtx x, int strict)
{
  if (GET_CODE (x) != LO_SUM)
    return 0;
  if (GET_CODE (XEXP (x, 0)) != REG)
    return 0;
  if (!INT_REG_OK_FOR_BASE_P (XEXP (x, 0), strict))
    return 0;

  if (TARGET_E500_DOUBLE && (mode == DFmode || mode == DImode))
    return 0;
  x = XEXP (x, 1);

  if (TARGET_ELF || TARGET_MACHO)
    {
      if (DEFAULT_ABI != ABI_AIX && DEFAULT_ABI != ABI_DARWIN && flag_pic)
 return 0;
      if (TARGET_TOC)
 return 0;
      if (GET_MODE_NUNITS (mode) != 1)
 return 0;
      if (GET_MODE_BITSIZE (mode) > 64
   || (GET_MODE_BITSIZE (mode) > 32 && !TARGET_POWERPC64
       && !(TARGET_HARD_FLOAT && TARGET_FPRS && mode == DFmode)))
 return 0;

      return CONSTANT_P (x);
    }

  return 0;
}
