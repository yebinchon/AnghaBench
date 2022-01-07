
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int ) ;
 int DFmode ;
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
rs6000_emit_swdivdf (rtx res, rtx n, rtx d)
{
  rtx x0, e0, e1, e2, y1, y2, y3, u0, v0, one;

  x0 = gen_reg_rtx (DFmode);
  e0 = gen_reg_rtx (DFmode);
  e1 = gen_reg_rtx (DFmode);
  e2 = gen_reg_rtx (DFmode);
  y1 = gen_reg_rtx (DFmode);
  y2 = gen_reg_rtx (DFmode);
  y3 = gen_reg_rtx (DFmode);
  u0 = gen_reg_rtx (DFmode);
  v0 = gen_reg_rtx (DFmode);
  one = force_reg (DFmode, CONST_DOUBLE_FROM_REAL_VALUE (dconst1, DFmode));


  emit_insn (gen_rtx_SET (VOIDmode, x0,
     gen_rtx_UNSPEC (DFmode, gen_rtvec (1, d),
       UNSPEC_FRES)));

  emit_insn (gen_rtx_SET (VOIDmode, e0,
     gen_rtx_MINUS (DFmode, one,
      gen_rtx_MULT (SFmode, d, x0))));

  emit_insn (gen_rtx_SET (VOIDmode, y1,
     gen_rtx_PLUS (DFmode,
     gen_rtx_MULT (DFmode, e0, x0), x0)));

  emit_insn (gen_rtx_SET (VOIDmode, e1,
     gen_rtx_MULT (DFmode, e0, e0)));

  emit_insn (gen_rtx_SET (VOIDmode, y2,
     gen_rtx_PLUS (DFmode,
     gen_rtx_MULT (DFmode, e1, y1), y1)));

  emit_insn (gen_rtx_SET (VOIDmode, e2,
     gen_rtx_MULT (DFmode, e1, e1)));

  emit_insn (gen_rtx_SET (VOIDmode, y3,
     gen_rtx_PLUS (DFmode,
     gen_rtx_MULT (DFmode, e2, y2), y2)));

  emit_insn (gen_rtx_SET (VOIDmode, u0,
     gen_rtx_MULT (DFmode, n, y3)));

  emit_insn (gen_rtx_SET (VOIDmode, v0,
     gen_rtx_MINUS (DFmode, n,
      gen_rtx_MULT (DFmode, d, u0))));

  emit_insn (gen_rtx_SET (VOIDmode, res,
     gen_rtx_PLUS (DFmode,
     gen_rtx_MULT (DFmode, v0, y3), u0)));
}
