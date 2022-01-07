
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ mips_regno_mode_ok_for_base_p (int ,int,int) ;

__attribute__((used)) static bool
mips_valid_base_register_p (rtx x, enum machine_mode mode, int strict)
{
  if (!strict && GET_CODE (x) == SUBREG)
    x = SUBREG_REG (x);

  return (REG_P (x)
   && mips_regno_mode_ok_for_base_p (REGNO (x), mode, strict));
}
