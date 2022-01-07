
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST0_RTX (int) ;
 int FIRST_PSEUDO_REGISTER ;
 int GEN_INT (int) ;
 int GET_MODE_INNER (int) ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 int SImode ;
 int TARGET_SSE2 ;
 int VOIDmode ;
 int const1_rtx ;
 int convert_modes (int ,int,int ,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_reg (int,int ) ;
 int gcc_unreachable () ;
 int gen_lowpart (int const,int ) ;
 int gen_reg_rtx (int const) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_VEC_CONCAT (int,int ,int ) ;
 int gen_rtx_VEC_DUPLICATE (int,int ) ;
 int gen_rtx_VEC_MERGE (int,int ,int ,int ) ;
 int gen_sse2_pshufd_1 (int ,int ,int ,int ,int ,int ) ;
 int gen_sse_shufps_1 (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool
ix86_expand_vector_init_one_nonzero (bool mmx_ok, enum machine_mode mode,
         rtx target, rtx var, int one_var)
{
  enum machine_mode vsimode;
  rtx new_target;
  rtx x, tmp;

  switch (mode)
    {
    case 134:
    case 133:
      if (!mmx_ok)
 return 0;


    case 136:
    case 135:
      if (one_var != 0)
 return 0;
      var = force_reg (GET_MODE_INNER (mode), var);
      x = gen_rtx_VEC_CONCAT (mode, var, CONST0_RTX (GET_MODE_INNER (mode)));
      emit_insn (gen_rtx_SET (VOIDmode, target, x));
      return 1;

    case 131:
    case 130:
      if (!REG_P (target) || REGNO (target) < FIRST_PSEUDO_REGISTER)
 new_target = gen_reg_rtx (mode);
      else
 new_target = target;
      var = force_reg (GET_MODE_INNER (mode), var);
      x = gen_rtx_VEC_DUPLICATE (mode, var);
      x = gen_rtx_VEC_MERGE (mode, x, CONST0_RTX (mode), const1_rtx);
      emit_insn (gen_rtx_SET (VOIDmode, new_target, x));
      if (one_var != 0)
 {




   if (mode != 131 && TARGET_SSE2)
     {
       emit_insn (gen_sse2_pshufd_1 (new_target, new_target,
         GEN_INT (1),
         GEN_INT (one_var == 1 ? 0 : 1),
         GEN_INT (one_var == 2 ? 0 : 1),
         GEN_INT (one_var == 3 ? 0 : 1)));
       if (target != new_target)
  emit_move_insn (target, new_target);
       return 1;
     }



   if (mode != 131)
     {
       tmp = gen_reg_rtx (131);
       emit_move_insn (tmp, gen_lowpart (131, new_target));
     }
   else
     tmp = new_target;

   emit_insn (gen_sse_shufps_1 (tmp, tmp, tmp,
           GEN_INT (1),
           GEN_INT (one_var == 1 ? 0 : 1),
           GEN_INT (one_var == 2 ? 0+4 : 1+4),
           GEN_INT (one_var == 3 ? 0+4 : 1+4)));

   if (mode != 131)
     emit_move_insn (target, gen_lowpart (130, tmp));
   else if (tmp != target)
     emit_move_insn (target, tmp);
 }
      else if (target != new_target)
 emit_move_insn (target, new_target);
      return 1;

    case 129:
    case 137:
      vsimode = 130;
      goto widen;
    case 132:
    case 128:
      if (!mmx_ok)
 return 0;
      vsimode = 133;
      goto widen;
    widen:
      if (one_var != 0)
 return 0;


      var = convert_modes (SImode, GET_MODE_INNER (mode), var, 1);

      x = gen_reg_rtx (vsimode);
      if (!ix86_expand_vector_init_one_nonzero (mmx_ok, vsimode, x,
      var, one_var))
 gcc_unreachable ();

      emit_move_insn (target, gen_lowpart (mode, x));
      return 1;

    default:
      return 0;
    }
}
