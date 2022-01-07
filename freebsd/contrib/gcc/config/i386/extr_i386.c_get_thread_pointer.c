
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int UNSPEC_TP ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int ,int ,int ) ;

__attribute__((used)) static rtx
get_thread_pointer (int to_reg)
{
  rtx tp, reg, insn;

  tp = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, const0_rtx), UNSPEC_TP);
  if (!to_reg)
    return tp;

  reg = gen_reg_rtx (Pmode);
  insn = gen_rtx_SET (VOIDmode, reg, tp);
  insn = emit_insn (insn);

  return reg;
}
