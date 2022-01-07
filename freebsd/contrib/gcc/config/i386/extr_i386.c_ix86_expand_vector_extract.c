
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GEN_INT (int) ;
 int GET_MODE (int ) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;
 int HImode ;
 int const SFmode ;
 int const SImode ;
 int TARGET_3DNOW_A ;
 int TARGET_SSE ;
 int TARGET_SSE2 ;
 int VOIDmode ;
 int adjust_address (int ,int,int) ;
 int assign_stack_temp (int,int,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_unreachable () ;
 int gen_lowpart (int const,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_VEC_SELECT (int,int ,int ) ;
 int gen_rtx_ZERO_EXTEND (int const,int ) ;
 int gen_sse2_pshufd_1 (int ,int ,int ,int ,int ,int ) ;
 int gen_sse2_punpckhdq (int ,int ,int ) ;
 int gen_sse_shufps_1 (int ,int ,int ,int ,int ,int ,int ) ;
 int gen_sse_unpckhps (int ,int ,int ) ;

void
ix86_expand_vector_extract (bool mmx_ok, rtx target, rtx vec, int elt)
{
  enum machine_mode mode = GET_MODE (vec);
  enum machine_mode inner_mode = GET_MODE_INNER (mode);
  bool use_vec_extr = 0;
  rtx tmp;

  switch (mode)
    {
    case 133:
    case 134:
      if (!mmx_ok)
 break;


    case 136:
    case 135:
      use_vec_extr = 1;
      break;

    case 131:
      switch (elt)
 {
 case 0:
   tmp = vec;
   break;

 case 1:
 case 3:
   tmp = gen_reg_rtx (mode);
   emit_insn (gen_sse_shufps_1 (tmp, vec, vec,
           GEN_INT (elt), GEN_INT (elt),
           GEN_INT (elt+4), GEN_INT (elt+4)));
   break;

 case 2:
   tmp = gen_reg_rtx (mode);
   emit_insn (gen_sse_unpckhps (tmp, vec, vec));
   break;

 default:
   gcc_unreachable ();
 }
      vec = tmp;
      use_vec_extr = 1;
      elt = 0;
      break;

    case 130:
      if (TARGET_SSE2)
 {
   switch (elt)
     {
     case 0:
       tmp = vec;
       break;

     case 1:
     case 3:
       tmp = gen_reg_rtx (mode);
       emit_insn (gen_sse2_pshufd_1 (tmp, vec,
         GEN_INT (elt), GEN_INT (elt),
         GEN_INT (elt), GEN_INT (elt)));
       break;

     case 2:
       tmp = gen_reg_rtx (mode);
       emit_insn (gen_sse2_punpckhdq (tmp, vec, vec));
       break;

     default:
       gcc_unreachable ();
     }
   vec = tmp;
   use_vec_extr = 1;
   elt = 0;
 }
      else
 {

   ix86_expand_vector_extract (0, gen_lowpart (SFmode, target),
          gen_lowpart (131, vec), elt);
   return;
 }
      break;

    case 129:
      use_vec_extr = TARGET_SSE2;
      break;
    case 132:
      use_vec_extr = mmx_ok && (TARGET_SSE || TARGET_3DNOW_A);
      break;

    case 137:
    case 128:

    default:
      break;
    }

  if (use_vec_extr)
    {
      tmp = gen_rtx_PARALLEL (VOIDmode, gen_rtvec (1, GEN_INT (elt)));
      tmp = gen_rtx_VEC_SELECT (inner_mode, vec, tmp);


      if (inner_mode == HImode)
 {
   tmp = gen_rtx_ZERO_EXTEND (SImode, tmp);
   target = gen_lowpart (SImode, target);
 }

      emit_insn (gen_rtx_SET (VOIDmode, target, tmp));
    }
  else
    {
      rtx mem = assign_stack_temp (mode, GET_MODE_SIZE (mode), 0);

      emit_move_insn (mem, vec);

      tmp = adjust_address (mem, inner_mode, elt*GET_MODE_SIZE (inner_mode));
      emit_move_insn (target, tmp);
    }
}
