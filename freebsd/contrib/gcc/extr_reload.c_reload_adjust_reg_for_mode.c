
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int gen_rtx_REG (int,int) ;
 scalar_t__** hard_regno_nregs ;

rtx
reload_adjust_reg_for_mode (rtx reloadreg, enum machine_mode mode)
{
  int regno;

  if (GET_MODE (reloadreg) == mode)
    return reloadreg;

  regno = REGNO (reloadreg);

  if (WORDS_BIG_ENDIAN)
    regno += (int) hard_regno_nregs[regno][GET_MODE (reloadreg)]
      - (int) hard_regno_nregs[regno][mode];

  return gen_rtx_REG (mode, regno);
}
