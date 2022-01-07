
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ DFmode ;
 scalar_t__ DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ REG_P (int ) ;
 int SImode ;
 scalar_t__ SPE_VECTOR_MODE (scalar_t__) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_SPE ;

bool
invalid_e500_subreg (rtx op, enum machine_mode mode)
{
  if (TARGET_E500_DOUBLE)
    {

      if (GET_CODE (op) == SUBREG
   && mode == SImode
   && REG_P (SUBREG_REG (op))
   && GET_MODE (SUBREG_REG (op)) == DFmode)
 return 1;


      if (GET_CODE (op) == SUBREG
   && mode == DFmode
   && REG_P (SUBREG_REG (op))
   && GET_MODE (SUBREG_REG (op)) == DImode)
 return 1;
    }

  if (TARGET_SPE
      && GET_CODE (op) == SUBREG
      && mode == SImode
      && REG_P (SUBREG_REG (op))
      && SPE_VECTOR_MODE (GET_MODE (SUBREG_REG (op))))
    return 1;

  return 0;
}
