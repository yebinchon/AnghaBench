
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ store_killed_in_insn (scalar_t__,scalar_t__,scalar_t__,int) ;
 int store_ops_ok (scalar_t__,int*) ;

__attribute__((used)) static bool
store_killed_after (rtx x, rtx x_regs, rtx insn, basic_block bb,
      int *regs_set_after, rtx *fail_insn)
{
  rtx last = BB_END (bb), act;

  if (!store_ops_ok (x_regs, regs_set_after))
    {

      if (fail_insn)
 *fail_insn = NULL_RTX;
      return 1;
    }


  for (act = last; act != PREV_INSN (insn); act = PREV_INSN (act))
    if (store_killed_in_insn (x, x_regs, act, 0))
      {
 if (fail_insn)
   *fail_insn = act;
 return 1;
      }

  return 0;
}
