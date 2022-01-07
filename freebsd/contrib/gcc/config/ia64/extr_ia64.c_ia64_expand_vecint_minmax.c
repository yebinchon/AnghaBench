
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GT ;
 int GTU ;
 int LT ;
 int LTU ;




 int V4HImode ;
 int V8QImode ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int gcc_unreachable () ;
 int gen_addv4hi3 (int ,int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_US_MINUS (int,int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int ia64_expand_vecint_cmov (int *) ;

bool
ia64_expand_vecint_minmax (enum rtx_code code, enum machine_mode mode,
      rtx operands[])
{
  rtx xops[6];


  if (mode == V8QImode && (code == 128 || code == 129))
    return 0;
  if (mode == V4HImode && (code == 130 || code == 131))
    return 0;


  if (mode == V4HImode && code == 129)
    {
      rtx x, tmp = gen_reg_rtx (mode);

      x = gen_rtx_US_MINUS (mode, operands[1], operands[2]);
      emit_insn (gen_rtx_SET (VOIDmode, tmp, x));

      emit_insn (gen_addv4hi3 (operands[0], tmp, operands[2]));
      return 1;
    }


  xops[0] = operands[0];
  xops[4] = xops[1] = operands[1];
  xops[5] = xops[2] = operands[2];

  switch (code)
    {
    case 128:
      code = LTU;
      break;
    case 129:
      code = GTU;
      break;
    case 130:
      code = LT;
      break;
    case 131:
      code = GT;
      break;
    default:
      gcc_unreachable ();
    }
  xops[3] = gen_rtx_fmt_ee (code, VOIDmode, operands[1], operands[2]);

  ia64_expand_vecint_cmov (xops);
  return 1;
}
