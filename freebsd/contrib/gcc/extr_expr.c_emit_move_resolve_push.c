
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 int GEN_INT (int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE_SIZE (int) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ MINUS ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ PLUS ;






 int PUSH_ROUNDING (int ) ;
 int Pmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_simple_binop (int ,scalar_t__,scalar_t__,int ,scalar_t__,int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ plus_constant (scalar_t__,int ) ;
 scalar_t__ replace_equiv_address (scalar_t__,scalar_t__) ;
 scalar_t__ stack_pointer_rtx ;

__attribute__((used)) static rtx
emit_move_resolve_push (enum machine_mode mode, rtx x)
{
  enum rtx_code code = GET_CODE (XEXP (x, 0));
  HOST_WIDE_INT adjust;
  rtx temp;

  adjust = GET_MODE_SIZE (mode);



  if (code == 130 || code == 133)
    adjust = -adjust;
  else if (code == 128 || code == 131)
    {
      rtx expr = XEXP (XEXP (x, 0), 1);
      HOST_WIDE_INT val;

      gcc_assert (GET_CODE (expr) == PLUS || GET_CODE (expr) == MINUS);
      gcc_assert (GET_CODE (XEXP (expr, 1)) == CONST_INT);
      val = INTVAL (XEXP (expr, 1));
      if (GET_CODE (expr) == MINUS)
 val = -val;
      gcc_assert (adjust == val || adjust == -val);
      adjust = val;
    }



  temp = expand_simple_binop (Pmode, PLUS, stack_pointer_rtx,
         GEN_INT (adjust), stack_pointer_rtx,
         0, OPTAB_LIB_WIDEN);
  if (temp != stack_pointer_rtx)
    emit_move_insn (stack_pointer_rtx, temp);

  switch (code)
    {
    case 129:
    case 130:
    case 128:
      temp = stack_pointer_rtx;
      break;
    case 132:
    case 133:
    case 131:
      temp = plus_constant (stack_pointer_rtx, -adjust);
      break;
    default:
      gcc_unreachable ();
    }

  return replace_equiv_address (x, temp);
}
