
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;





 int GET_CODE (scalar_t__) ;



 scalar_t__ NULL_RTX ;

 int add_insn_after (scalar_t__,scalar_t__) ;
 scalar_t__ emit_insn_after_1 (scalar_t__,scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ make_insn_raw (scalar_t__) ;

rtx
emit_insn_after_noloc (rtx x, rtx after)
{
  rtx last = after;

  gcc_assert (after);

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
      last = emit_insn_after_1 (x, after);
      break;







    default:
      last = make_insn_raw (x);
      add_insn_after (last, after);
      break;
    }

  return last;
}
