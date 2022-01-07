
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

__attribute__((used)) static int
count_bb_insns (basic_block bb)
{
  int count = 0;
  rtx insn = BB_HEAD (bb);

  while (1)
    {
      if (CALL_P (insn) || NONJUMP_INSN_P (insn))
 count++;

      if (insn == BB_END (bb))
 break;
      insn = NEXT_INSN (insn);
    }

  return count;
}
