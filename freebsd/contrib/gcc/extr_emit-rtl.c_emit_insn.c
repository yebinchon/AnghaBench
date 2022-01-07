
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;





 int GET_CODE (scalar_t__) ;


 scalar_t__ NEXT_INSN (scalar_t__) ;

 scalar_t__ NULL_RTX ;

 int add_insn (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ last_insn ;
 scalar_t__ make_insn_raw (scalar_t__) ;

rtx
emit_insn (rtx x)
{
  rtx last = last_insn;
  rtx insn;

  if (x == NULL_RTX)
    return last;

  switch (GET_CODE (x))
    {
    case 131:
    case 130:
    case 133:
    case 132:
    case 134:
    case 129:
      insn = x;
      while (insn)
 {
   rtx next = NEXT_INSN (insn);
   add_insn (insn);
   last = insn;
   insn = next;
 }
      break;







    default:
      last = make_insn_raw (x);
      add_insn (last);
      break;
    }

  return last;
}
