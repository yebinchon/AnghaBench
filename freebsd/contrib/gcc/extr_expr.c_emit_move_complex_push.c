
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (int ) ;
 int GET_MODE_INNER (int) ;
 unsigned int GET_MODE_SIZE (int) ;




 unsigned int PUSH_ROUNDING (unsigned int) ;
 int XEXP (int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int emit_move_resolve_push (int,int ) ;
 int gcc_unreachable () ;
 int gen_rtx_MEM (int,int ) ;
 int read_complex_part (int ,int) ;

__attribute__((used)) static rtx
emit_move_complex_push (enum machine_mode mode, rtx x, rtx y)
{
  enum machine_mode submode = GET_MODE_INNER (mode);
  bool imag_first;
  switch (GET_CODE (XEXP (x, 0)))
    {
    case 129:
    case 131:
      imag_first = 1;
      break;
    case 128:
    case 130:
      imag_first = 0;
      break;
    default:
      gcc_unreachable ();
    }

  emit_move_insn (gen_rtx_MEM (submode, XEXP (x, 0)),
    read_complex_part (y, imag_first));
  return emit_move_insn (gen_rtx_MEM (submode, XEXP (x, 0)),
    read_complex_part (y, !imag_first));
}
