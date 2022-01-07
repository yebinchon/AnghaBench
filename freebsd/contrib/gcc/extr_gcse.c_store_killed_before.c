
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ store_killed_in_insn (scalar_t__,scalar_t__,scalar_t__,int) ;
 int store_ops_ok (scalar_t__,int*) ;

__attribute__((used)) static bool
store_killed_before (rtx x, rtx x_regs, rtx insn, basic_block bb,
       int *regs_set_before)
{
  rtx first = BB_HEAD (bb);

  if (!store_ops_ok (x_regs, regs_set_before))
    return 1;

  for ( ; insn != PREV_INSN (first); insn = PREV_INSN (insn))
    if (store_killed_in_insn (x, x_regs, insn, 1))
      return 1;

  return 0;
}
