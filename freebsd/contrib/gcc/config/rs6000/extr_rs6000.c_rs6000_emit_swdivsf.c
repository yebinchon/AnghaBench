
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int ) ;
 int SFmode ;
 int UNSPEC_FRES ;
 int VOIDmode ;
 int dconst1 ;
 int emit_insn (int ) ;
 int force_reg (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_MINUS (int ,int ,int ) ;
 int gen_rtx_MULT (int ,int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int ,int ,int ) ;

void
rs6000_emit_swdivsf (rtx res, rtx n, rtx d)
{
  rtx x0, e0, e1, y1, u0, v0, one;

  x0 = gen_reg_rtx (SFmode);
  e0 = gen_reg_rtx (SFmode);
  e1 = gen_reg_rtx (SFmode);
  y1 = gen_reg_rtx (SFmode);
  u0 = gen_reg_rtx (SFmode);
  v0 = gen_reg_rtx (SFmode);
  one = force_reg (SFmode, CONST_DOUBLE_FROM_REAL_VALUE (dconst1, SFmode));


  emit_insn (gen_rtx_SET (VOIDmode, x0,
     gen_rtx_UNSPEC (SFmode, gen_rtvec (1, d),
       UNSPEC_FRES)));

  emit_insn (gen_rtx_SET (VOIDmode, e0,
     gen_rtx_MINUS (SFmode, one,
      gen_rtx_MULT (SFmode, d, x0))));

  emit_insn (gen_rtx_SET (VOIDmode, e1,
     gen_rtx_PLUS (SFmode,
     gen_rtx_MULT (SFmode, e0, e0), e0)));

  emit_insn (gen_rtx_SET (VOIDmode, y1,
     gen_rtx_PLUS (SFmode,
     gen_rtx_MULT (SFmode, e1, x0), x0)));

  emit_insn (gen_rtx_SET (VOIDmode, u0,
     gen_rtx_MULT (SFmode, n, y1)));

  emit_insn (gen_rtx_SET (VOIDmode, v0,
     gen_rtx_MINUS (SFmode, n,
      gen_rtx_MULT (SFmode, d, u0))));

  emit_insn (gen_rtx_SET (VOIDmode, res,
     gen_rtx_PLUS (SFmode,
     gen_rtx_MULT (SFmode, v0, y1), u0)));
}
