
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;
 scalar_t__ const0_rtx ;
 int emit_insn (int ) ;
 int gen_iwmmxt_clrdi (scalar_t__) ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ gen_rtx_SUBREG (int,scalar_t__,int ) ;

__attribute__((used)) static rtx
safe_vector_operand (rtx x, enum machine_mode mode)
{
  if (x != const0_rtx)
    return x;
  x = gen_reg_rtx (mode);

  emit_insn (gen_iwmmxt_clrdi (mode == DImode ? x
          : gen_rtx_SUBREG (DImode, x, 0)));
  return x;
}
