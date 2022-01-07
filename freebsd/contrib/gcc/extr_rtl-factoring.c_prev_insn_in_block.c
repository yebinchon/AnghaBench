
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_HEAD (int ) ;
 int BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PREV_INSN (scalar_t__) ;

__attribute__((used)) static rtx
prev_insn_in_block (rtx insn)
{
  basic_block bb = BLOCK_FOR_INSN (insn);

  if (!bb)
    return NULL_RTX;

  while (insn != BB_HEAD (bb))
    {
      insn = PREV_INSN (insn);
      if (INSN_P (insn))
        return insn;
    }
  return NULL_RTX;
}
