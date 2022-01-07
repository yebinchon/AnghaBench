
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NOTE_INSN_BASIC_BLOCK_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int gcc_assert (int ) ;

rtx
first_insn_after_basic_block_note (basic_block block)
{
  rtx insn;


  insn = BB_HEAD (block);

  if (insn == NULL_RTX)
    return NULL_RTX;
  if (LABEL_P (insn))
    insn = NEXT_INSN (insn);
  gcc_assert (NOTE_INSN_BASIC_BLOCK_P (insn));

  return NEXT_INSN (insn);
}
