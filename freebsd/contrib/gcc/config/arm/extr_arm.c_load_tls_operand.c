
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NULL_RTX ;
 int SImode ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 scalar_t__ gen_rtx_CONST (int ,scalar_t__) ;

__attribute__((used)) static rtx
load_tls_operand (rtx x, rtx reg)
{
  rtx tmp;

  if (reg == NULL_RTX)
    reg = gen_reg_rtx (SImode);

  tmp = gen_rtx_CONST (SImode, x);

  emit_move_insn (reg, tmp);

  return reg;
}
