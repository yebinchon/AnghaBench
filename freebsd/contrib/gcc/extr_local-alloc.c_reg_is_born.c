
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int death; } ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int PSEUDO_REGNO_SIZE (int) ;
 int REGNO (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int alloc_qty (int,int ,int ,int) ;
 int mark_life (int,int ,int) ;
 int post_mark_life (int,int ,int,int,int) ;
 TYPE_1__* qty ;
 int* reg_qty ;
 int subreg_regno (int ) ;
 int this_insn_number ;

__attribute__((used)) static void
reg_is_born (rtx reg, int birth)
{
  int regno;

  if (GET_CODE (reg) == SUBREG)
    {
      regno = REGNO (SUBREG_REG (reg));
      if (regno < FIRST_PSEUDO_REGISTER)
 regno = subreg_regno (reg);
    }
  else
    regno = REGNO (reg);

  if (regno < FIRST_PSEUDO_REGISTER)
    {
      mark_life (regno, GET_MODE (reg), 1);



      if (birth < 2 * this_insn_number)
 post_mark_life (regno, GET_MODE (reg), 1, birth, 2 * this_insn_number);
    }
  else
    {
      if (reg_qty[regno] == -2)
 alloc_qty (regno, GET_MODE (reg), PSEUDO_REGNO_SIZE (regno), birth);


      if (reg_qty[regno] >= 0)
 qty[reg_qty[regno]].death = -1;
    }
}
