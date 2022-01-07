
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int SET_INSN_DELETED (scalar_t__) ;
 int cleanup_subreg_operands (scalar_t__) ;
 scalar_t__ reload_completed ;
 scalar_t__ try_split (int ,scalar_t__,int) ;

__attribute__((used)) static rtx
split_insn (rtx insn)
{

  rtx first = PREV_INSN (insn);
  rtx last = try_split (PATTERN (insn), insn, 1);

  if (last == insn)
    return NULL_RTX;


  SET_INSN_DELETED (insn);



  if (reload_completed && first != last)
    {
      first = NEXT_INSN (first);
      for (;;)
 {
   if (INSN_P (first))
     cleanup_subreg_operands (first);
   if (first == last)
     break;
   first = NEXT_INSN (first);
 }
    }
  return last;
}
