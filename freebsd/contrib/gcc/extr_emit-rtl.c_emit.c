
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int GET_CODE (int ) ;


 int RETURN ;
 int any_uncondjump_p (int ) ;
 int classify_insn (int ) ;
 int emit_barrier () ;
 int emit_call_insn (int ) ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int gcc_unreachable () ;

rtx
emit (rtx x)
{
  enum rtx_code code = classify_insn (x);

  switch (code)
    {
    case 130:
      return emit_label (x);
    case 129:
      return emit_insn (x);
    case 128:
      {
 rtx insn = emit_jump_insn (x);
 if (any_uncondjump_p (insn) || GET_CODE (x) == RETURN)
   return emit_barrier ();
 return insn;
      }
    case 131:
      return emit_call_insn (x);
    default:
      gcc_unreachable ();
    }
}
