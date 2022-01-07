
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int regset ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CLOBBER ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_REGNO_REG_SET (int ,int) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int** hard_regno_nregs ;
 int subreg_regno_offset (int,int,int ,int) ;

__attribute__((used)) static void
add_stored_regs (rtx reg, rtx setter, void *data)
{
  int regno, endregno, i;
  enum machine_mode mode = GET_MODE (reg);
  int offset = 0;

  if (GET_CODE (setter) == CLOBBER)
    return;

  if (GET_CODE (reg) == SUBREG && REG_P (SUBREG_REG (reg)))
    {
      offset = subreg_regno_offset (REGNO (SUBREG_REG (reg)),
        GET_MODE (SUBREG_REG (reg)),
        SUBREG_BYTE (reg),
        GET_MODE (reg));
      reg = SUBREG_REG (reg);
    }

  if (!REG_P (reg) || REGNO (reg) >= FIRST_PSEUDO_REGISTER)
    return;

  regno = REGNO (reg) + offset;
  endregno = regno + hard_regno_nregs[regno][mode];

  for (i = regno; i < endregno; i++)
    SET_REGNO_REG_SET ((regset) data, i);
}
