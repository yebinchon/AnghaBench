
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;

__attribute__((used)) static int
can_move_up (basic_block bb, rtx insn, int n_insns)
{
  while (insn != BB_HEAD (bb) && n_insns > 0)
    {
      insn = PREV_INSN (insn);



      if (INSN_P (insn))
 n_insns--;
    }
  return n_insns <= 0;
}
