
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
 int const SFmode ;
 int TARGET_3DNOW_A ;
 int TARGET_SSE ;
 int TARGET_SSE2 ;
 int VOIDmode ;
 int adjust_address (int ,int,int) ;
 int assign_stack_temp (int,int,int) ;
 int const0_rtx ;
 int const1_rtx ;
 int const2_rtx ;
 int copy_to_reg (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_unreachable () ;
 int gen_lowpart (int const,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_VEC_CONCAT (int,int ,int ) ;
 int gen_rtx_VEC_DUPLICATE (int,int ) ;
 int gen_rtx_VEC_MERGE (int,int ,int ,int ) ;
 int gen_rtx_VEC_SELECT (int,int ,int ) ;
 int gen_sse2_pshufd_1 (int ,int ,int ,int ,int ,int ) ;
 int gen_sse_shufps_1 (int ,int ,int ,int ,int ,int ,int ) ;
 int gen_sse_unpcklps (int ,int ,int ) ;
 int ix86_expand_vector_extract (int,int ,int ,int) ;

void
ix86_expand_vector_set (bool mmx_ok, rtx target, rtx val, int elt)
{
  enum machine_mode mode = GET_MODE (target);
  enum machine_mode inner_mode = GET_MODE_INNER (mode);
  bool use_vec_merge = 0;
  rtx tmp;

  switch (mode)
    {
    case 134:
    case 133:
      if (mmx_ok)
 {
   tmp = gen_reg_rtx (GET_MODE_INNER (mode));
   ix86_expand_vector_extract (1, tmp, target, 1 - elt);
   if (elt == 0)
     tmp = gen_rtx_VEC_CONCAT (mode, tmp, val);
   else
     tmp = gen_rtx_VEC_CONCAT (mode, val, tmp);
   emit_insn (gen_rtx_SET (VOIDmode, target, tmp));
   return;
 }
      break;

    case 136:
    case 135:
      {
 rtx op0, op1;




 tmp = gen_rtx_PARALLEL (VOIDmode, gen_rtvec (1, GEN_INT (1 - elt)));
 tmp = gen_rtx_VEC_SELECT (inner_mode, target, tmp);

 if (elt == 0)
   op0 = val, op1 = tmp;
 else
   op0 = tmp, op1 = val;

 tmp = gen_rtx_VEC_CONCAT (mode, op0, op1);
 emit_insn (gen_rtx_SET (VOIDmode, target, tmp));
      }
      return;

    case 131:
      switch (elt)
 {
 case 0:
   use_vec_merge = 1;
   break;

 case 1:

   tmp = copy_to_reg (target);

   emit_insn (gen_sse_unpcklps (target, target, target));

   ix86_expand_vector_set (0, target, val, 0);

   emit_insn (gen_sse_shufps_1 (target, target, tmp,
           GEN_INT (1), GEN_INT (0),
           GEN_INT (2+4), GEN_INT (3+4)));
   return;

 case 2:

   tmp = copy_to_reg (target);

   ix86_expand_vector_set (0, tmp, val, 0);

   emit_insn (gen_sse_shufps_1 (target, target, tmp,
           GEN_INT (0), GEN_INT (1),
           GEN_INT (0+4), GEN_INT (3+4)));
   return;

 case 3:

   tmp = copy_to_reg (target);

   ix86_expand_vector_set (0, tmp, val, 0);

   emit_insn (gen_sse_shufps_1 (target, target, tmp,
           GEN_INT (0), GEN_INT (1),
           GEN_INT (2+4), GEN_INT (0+4)));
   return;

 default:
   gcc_unreachable ();
 }
      break;

    case 130:

      if (elt == 0)
 {
   use_vec_merge = 1;
   break;
 }

      if (TARGET_SSE2)
 {



   rtx order[4];

   order[0] = GEN_INT (elt);
   order[1] = const1_rtx;
   order[2] = const2_rtx;
   order[3] = GEN_INT (3);
   order[elt] = const0_rtx;

   emit_insn (gen_sse2_pshufd_1 (target, target, order[0],
     order[1], order[2], order[3]));

   ix86_expand_vector_set (0, target, val, 0);

   emit_insn (gen_sse2_pshufd_1 (target, target, order[0],
     order[1], order[2], order[3]));
 }
      else
 {

   ix86_expand_vector_set (0, gen_lowpart (131, target),
      gen_lowpart (SFmode, val), elt);
 }
      return;

    case 129:
      use_vec_merge = TARGET_SSE2;
      break;
    case 132:
      use_vec_merge = mmx_ok && (TARGET_SSE || TARGET_3DNOW_A);
      break;

    case 137:
    case 128:
    default:
      break;
    }

  if (use_vec_merge)
    {
      tmp = gen_rtx_VEC_DUPLICATE (mode, val);
      tmp = gen_rtx_VEC_MERGE (mode, tmp, target, GEN_INT (1 << elt));
      emit_insn (gen_rtx_SET (VOIDmode, target, tmp));
    }
  else
    {
      rtx mem = assign_stack_temp (mode, GET_MODE_SIZE (mode), 0);

      emit_move_insn (mem, target);

      tmp = adjust_address (mem, inner_mode, elt*GET_MODE_SIZE (inner_mode));
      emit_move_insn (tmp, val);

      emit_move_insn (target, mem);
    }
}
