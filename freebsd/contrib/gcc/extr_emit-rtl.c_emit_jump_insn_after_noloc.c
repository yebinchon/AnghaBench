
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int GET_CODE (int ) ;




 int add_insn_after (int ,int ) ;
 int emit_insn_after_1 (int ,int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int make_jump_insn_raw (int ) ;

rtx
emit_jump_insn_after_noloc (rtx x, rtx after)
{
  rtx last;

  gcc_assert (after);

  switch (GET_CODE (x))
    {
    case 131:
    case 130:
    case 133:
    case 132:
    case 134:
    case 129:
      last = emit_insn_after_1 (x, after);
      break;







    default:
      last = make_jump_insn_raw (x);
      add_insn_after (last, after);
      break;
    }

  return last;
}
