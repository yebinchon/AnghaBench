
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ASHIFT ;
 int CONST0_RTX (int const) ;
 int GEN_INT (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_INNER (int) ;
 int HImode ;
 int IOR ;
 int NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int QImode ;
 int SImode ;
 int TARGET_3DNOW_A ;
 int TARGET_SSE ;
 int TARGET_SSE2 ;
 int VOIDmode ;
 int const0_rtx ;
 int const1_rtx ;
 int convert_modes (int,int,int ,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_simple_binop (int,int ,int ,int ,int ,int,int ) ;
 int force_reg (int ,int ) ;
 int gcc_unreachable () ;
 int gen_lowpart (int const,int ) ;
 int gen_reg_rtx (int const) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_TRUNCATE (int,int ) ;
 int gen_rtx_VEC_DUPLICATE (int const,int ) ;
 int gen_rtx_VEC_MERGE (int const,int ,int ,int ) ;
 int gen_sse2_pshufd (int ,int ,int ) ;
 int gen_sse2_punpcklbw (int ,int ,int ) ;
 int gen_sse2_punpcklwd (int ,int ,int ) ;

__attribute__((used)) static bool
ix86_expand_vector_init_duplicate (bool mmx_ok, enum machine_mode mode,
       rtx target, rtx val)
{
  enum machine_mode smode, wsmode, wvmode;
  rtx x;

  switch (mode)
    {
    case 133:
    case 134:
      if (!mmx_ok)
 return 0;


    case 136:
    case 135:
    case 131:
    case 130:
      val = force_reg (GET_MODE_INNER (mode), val);
      x = gen_rtx_VEC_DUPLICATE (mode, val);
      emit_insn (gen_rtx_SET (VOIDmode, target, x));
      return 1;

    case 132:
      if (!mmx_ok)
 return 0;
      if (TARGET_SSE || TARGET_3DNOW_A)
 {
   val = gen_lowpart (SImode, val);
   x = gen_rtx_TRUNCATE (HImode, val);
   x = gen_rtx_VEC_DUPLICATE (mode, x);
   emit_insn (gen_rtx_SET (VOIDmode, target, x));
   return 1;
 }
      else
 {
   smode = HImode;
   wsmode = SImode;
   wvmode = 133;
   goto widen;
 }

    case 128:
      if (!mmx_ok)
 return 0;
      smode = QImode;
      wsmode = HImode;
      wvmode = 132;
      goto widen;
    case 129:
      if (TARGET_SSE2)
 {
   rtx tmp1, tmp2;

   tmp1 = gen_reg_rtx (SImode);
   emit_move_insn (tmp1, gen_lowpart (SImode, val));

   tmp2 = gen_reg_rtx (130);
   tmp1 = gen_rtx_VEC_MERGE (130,
        gen_rtx_VEC_DUPLICATE (130, tmp1),
        CONST0_RTX (130),
        const1_rtx);
   emit_insn (gen_rtx_SET (VOIDmode, tmp2, tmp1));

   tmp1 = gen_reg_rtx (129);
   emit_move_insn (tmp1, gen_lowpart (129, tmp2));

   emit_insn (gen_sse2_punpcklwd (tmp1, tmp1, tmp1));

   tmp2 = gen_reg_rtx (130);
   emit_move_insn (tmp2, gen_lowpart (130, tmp1));

   emit_insn (gen_sse2_pshufd (tmp2, tmp2, const0_rtx));

   emit_move_insn (target, gen_lowpart (129, tmp2));
   return 1;
 }
      smode = HImode;
      wsmode = SImode;
      wvmode = 130;
      goto widen;
    case 137:
      if (TARGET_SSE2)
 {
   rtx tmp1, tmp2;

   tmp1 = gen_reg_rtx (SImode);
   emit_move_insn (tmp1, gen_lowpart (SImode, val));

   tmp2 = gen_reg_rtx (130);
   tmp1 = gen_rtx_VEC_MERGE (130,
        gen_rtx_VEC_DUPLICATE (130, tmp1),
        CONST0_RTX (130),
        const1_rtx);
   emit_insn (gen_rtx_SET (VOIDmode, tmp2, tmp1));

   tmp1 = gen_reg_rtx (137);
   emit_move_insn (tmp1, gen_lowpart (137, tmp2));

   emit_insn (gen_sse2_punpcklbw (tmp1, tmp1, tmp1));
   emit_insn (gen_sse2_punpcklbw (tmp1, tmp1, tmp1));

   tmp2 = gen_reg_rtx (130);
   emit_move_insn (tmp2, gen_lowpart (130, tmp1));

   emit_insn (gen_sse2_pshufd (tmp2, tmp2, const0_rtx));

   emit_move_insn (target, gen_lowpart (137, tmp2));
   return 1;
 }
      smode = QImode;
      wsmode = HImode;
      wvmode = 129;
      goto widen;
    widen:

      val = convert_modes (wsmode, smode, val, 1);
      x = expand_simple_binop (wsmode, ASHIFT, val,
          GEN_INT (GET_MODE_BITSIZE (smode)),
          NULL_RTX, 1, OPTAB_LIB_WIDEN);
      val = expand_simple_binop (wsmode, IOR, val, x, x, 1, OPTAB_LIB_WIDEN);

      x = gen_reg_rtx (wvmode);
      if (!ix86_expand_vector_init_duplicate (mmx_ok, wvmode, x, val))
 gcc_unreachable ();
      emit_move_insn (target, gen_lowpart (mode, x));
      return 1;

    default:
      return 0;
    }
}
