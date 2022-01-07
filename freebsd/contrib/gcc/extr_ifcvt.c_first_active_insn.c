
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;

__attribute__((used)) static rtx
first_active_insn (basic_block bb)
{
  rtx insn = BB_HEAD (bb);

  if (LABEL_P (insn))
    {
      if (insn == BB_END (bb))
 return NULL_RTX;
      insn = NEXT_INSN (insn);
    }

  while (NOTE_P (insn))
    {
      if (insn == BB_END (bb))
 return NULL_RTX;
      insn = NEXT_INSN (insn);
    }

  if (JUMP_P (insn))
    return NULL_RTX;

  return insn;
}
