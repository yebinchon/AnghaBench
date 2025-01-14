
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GE ;
 int GET_MODE (scalar_t__) ;
 int GEU ;
 int SMAX ;
 int SMIN ;
 int UMAX ;
 scalar_t__ emit_conditional_move (scalar_t__,int,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int,int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int gcc_assert (scalar_t__) ;

void
rs6000_emit_minmax (rtx dest, enum rtx_code code, rtx op0, rtx op1)
{
  enum machine_mode mode = GET_MODE (op0);
  enum rtx_code c;
  rtx target;

  if (code == SMAX || code == SMIN)
    c = GE;
  else
    c = GEU;

  if (code == SMAX || code == UMAX)
    target = emit_conditional_move (dest, c, op0, op1, mode,
        op0, op1, mode, 0);
  else
    target = emit_conditional_move (dest, c, op0, op1, mode,
        op1, op0, mode, 0);
  gcc_assert (target);
  if (target != dest)
    emit_move_insn (dest, target);
}
