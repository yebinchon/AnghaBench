
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_MODE (int ) ;
 scalar_t__ Pmode ;
 scalar_t__ VOIDmode ;
 int copy_to_mode_reg (scalar_t__,int ) ;
 int emit_insn (int ) ;
 int force_reg (scalar_t__,int ) ;
 int gen_reg_rtx (scalar_t__) ;
 int gen_zero_extendsidi2 (int ,int ) ;

rtx
ix86_zero_extend_to_Pmode (rtx exp)
{
  rtx r;
  if (GET_MODE (exp) == VOIDmode)
    return force_reg (Pmode, exp);
  if (GET_MODE (exp) == Pmode)
    return copy_to_mode_reg (Pmode, exp);
  r = gen_reg_rtx (Pmode);
  emit_insn (gen_zero_extendsidi2 (r, exp));
  return r;
}
