
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DFmode ;
 int FIRST_MMX_REG ;
 int FIRST_SSE_REG ;
 int GET_MODE_SIZE (int) ;
 int SFmode ;
 int XFmode ;
 int ix86_hard_regno_mode_ok (int ,int) ;
 scalar_t__ ix86_tieable_integer_mode_p (int) ;

bool
ix86_modes_tieable_p (enum machine_mode mode1, enum machine_mode mode2)
{
  if (mode1 == mode2)
    return 1;

  if (ix86_tieable_integer_mode_p (mode1)
      && ix86_tieable_integer_mode_p (mode2))
    return 1;




  if (mode2 == XFmode)
    return mode1 == SFmode || mode1 == DFmode;



  if (mode2 == DFmode)
    return mode1 == SFmode;



  if (GET_MODE_SIZE (mode2) >= 8
      && ix86_hard_regno_mode_ok (FIRST_SSE_REG, mode2))
    return ix86_hard_regno_mode_ok (FIRST_SSE_REG, mode1);



  if (GET_MODE_SIZE (mode2) == 8
      && ix86_hard_regno_mode_ok (FIRST_MMX_REG, mode2))
    return ix86_hard_regno_mode_ok (FIRST_MMX_REG, mode1);

  return 0;
}
