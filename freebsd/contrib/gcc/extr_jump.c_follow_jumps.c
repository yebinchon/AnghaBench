
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ BARRIER_P (scalar_t__) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_LABEL (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ RETURN ;
 scalar_t__ any_uncondjump_p (scalar_t__) ;
 scalar_t__ flag_test_coverage ;
 scalar_t__ next_active_insn (scalar_t__) ;
 scalar_t__ onlyjump_p (scalar_t__) ;
 int reload_completed ;

rtx
follow_jumps (rtx label)
{
  rtx insn;
  rtx next;
  rtx value = label;
  int depth;

  for (depth = 0;
       (depth < 10
 && (insn = next_active_insn (value)) != 0
 && JUMP_P (insn)
 && ((JUMP_LABEL (insn) != 0 && any_uncondjump_p (insn)
      && onlyjump_p (insn))
     || GET_CODE (PATTERN (insn)) == RETURN)
 && (next = NEXT_INSN (insn))
 && BARRIER_P (next));
       depth++)
    {
      rtx tem;
      if (!reload_completed && flag_test_coverage)
 {


   for (tem = value; tem != insn; tem = NEXT_INSN (tem))
     if (NOTE_P (tem) && NOTE_LINE_NUMBER (tem) > 0)
       return value;
 }


      if (JUMP_LABEL (insn) == label)
 return label;

      tem = next_active_insn (JUMP_LABEL (insn));
      if (tem && (GET_CODE (PATTERN (tem)) == ADDR_VEC
    || GET_CODE (PATTERN (tem)) == ADDR_DIFF_VEC))
 break;

      value = JUMP_LABEL (insn);
    }
  if (depth == 10)
    return label;
  return value;
}
