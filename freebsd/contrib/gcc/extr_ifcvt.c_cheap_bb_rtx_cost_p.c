
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int SET_DEST (scalar_t__) ;
 scalar_t__ STACK_REG_P (int ) ;
 int insn_rtx_cost (int ) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static bool
cheap_bb_rtx_cost_p (basic_block bb, int max_cost)
{
  int count = 0;
  rtx insn = BB_HEAD (bb);

  while (1)
    {
      if (NONJUMP_INSN_P (insn))
 {
   int cost = insn_rtx_cost (PATTERN (insn));
   if (cost == 0)
     return 0;
   count += cost;
   if (count >= max_cost)
     return 0;
 }
      else if (CALL_P (insn))
 return 0;

      if (insn == BB_END (bb))
 break;
      insn = NEXT_INSN (insn);
    }

  return 1;
}
