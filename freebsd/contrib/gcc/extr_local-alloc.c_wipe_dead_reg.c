
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
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 int REGNO (int ) ;
 int REG_INC ;
 int REG_P (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 scalar_t__ find_regno_note (int ,int ,int) ;
 int mark_life (int,int ,int ) ;
 scalar_t__ multiple_sets (int ) ;
 int post_mark_life (int,int ,int,int,int) ;
 TYPE_1__* qty ;
 scalar_t__ reg_overlap_mentioned_p (int ,int ) ;
 size_t* reg_qty ;
 int rtx_equal_p (int ,int ) ;
 int this_insn ;
 int this_insn_number ;

__attribute__((used)) static void
wipe_dead_reg (rtx reg, int output_p)
{
  int regno = REGNO (reg);
  if (GET_CODE (PATTERN (this_insn)) == PARALLEL
      && multiple_sets (this_insn))
    {
      int i;
      for (i = XVECLEN (PATTERN (this_insn), 0) - 1; i >= 0; i--)
 {
   rtx set = XVECEXP (PATTERN (this_insn), 0, i);
   if (GET_CODE (set) == SET
       && !REG_P (SET_DEST (set))
       && !rtx_equal_p (reg, SET_DEST (set))
       && reg_overlap_mentioned_p (reg, SET_DEST (set)))
     output_p = 1;
 }
    }




  if (! output_p && find_regno_note (this_insn, REG_INC, regno))
    output_p = 1;

  if (regno < FIRST_PSEUDO_REGISTER)
    {
      mark_life (regno, GET_MODE (reg), 0);




      if (output_p)
 post_mark_life (regno, GET_MODE (reg), 1,
   2 * this_insn_number, 2 * this_insn_number + 1);
    }

  else if (reg_qty[regno] >= 0)
    qty[reg_qty[regno]].death = 2 * this_insn_number + output_p;
}
