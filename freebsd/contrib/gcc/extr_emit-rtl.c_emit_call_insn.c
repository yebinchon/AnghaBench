
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int GET_CODE (int ) ;




 int add_insn (int ) ;
 int emit_insn (int ) ;
 int gcc_unreachable () ;
 int make_call_insn_raw (int ) ;

rtx
emit_call_insn (rtx x)
{
  rtx insn;

  switch (GET_CODE (x))
    {
    case 131:
    case 130:
    case 133:
    case 132:
    case 134:
    case 129:
      insn = emit_insn (x);
      break;







    default:
      insn = make_call_insn_raw (x);
      add_insn (insn);
      break;
    }

  return insn;
}
