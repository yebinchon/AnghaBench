
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_INT ;
 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int) ;
 int INTVAL (int ) ;
 int NULL_RTX ;
 int SET ;
 int SImode ;
 int VOIDmode ;
 int arm_gen_constant (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int gcc_assert (int) ;
 int gen_highpart_mode (int ,int,int ) ;
 int gen_lowpart (int ,int ) ;

int
arm_const_double_inline_cost (rtx val)
{
  rtx lowpart, highpart;
  enum machine_mode mode;

  mode = GET_MODE (val);

  if (mode == VOIDmode)
    mode = DImode;

  gcc_assert (GET_MODE_SIZE (mode) == 8);

  lowpart = gen_lowpart (SImode, val);
  highpart = gen_highpart_mode (SImode, mode, val);

  gcc_assert (GET_CODE (lowpart) == CONST_INT);
  gcc_assert (GET_CODE (highpart) == CONST_INT);

  return (arm_gen_constant (SET, SImode, NULL_RTX, INTVAL (lowpart),
       NULL_RTX, NULL_RTX, 0, 0)
   + arm_gen_constant (SET, SImode, NULL_RTX, INTVAL (highpart),
         NULL_RTX, NULL_RTX, 0, 0));
}
