
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ USE ;

__attribute__((used)) static rtx
last_active_insn (basic_block bb, int skip_use_p)
{
  rtx insn = BB_END (bb);
  rtx head = BB_HEAD (bb);

  while (NOTE_P (insn)
  || JUMP_P (insn)
  || (skip_use_p
      && NONJUMP_INSN_P (insn)
      && GET_CODE (PATTERN (insn)) == USE))
    {
      if (insn == head)
 return NULL_RTX;
      insn = PREV_INSN (insn);
    }

  if (LABEL_P (insn))
    return NULL_RTX;

  return insn;
}
