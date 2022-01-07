
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int GET_CODE (int ) ;


 int NEXT_INSN (int ) ;

 int NULL_RTX ;

 int add_insn (int ) ;
 int gcc_unreachable () ;
 int make_jump_insn_raw (int ) ;

rtx
emit_jump_insn (rtx x)
{
  rtx last = NULL_RTX, insn;

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
      last = make_jump_insn_raw (x);
      add_insn (last);
      break;
    }

  return last;
}
