
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef int rtvec ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ASHIFT ;
 int * GEN_INT (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_NUNITS (int) ;
 int GET_MODE_SIZE (int) ;
 int IOR ;
 int * NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int TARGET_SSE ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 int * XVECEXP (int *,int ,int) ;
 int * convert_modes (int,int,int *,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int *,int *) ;
 int * expand_simple_binop (int,int ,int *,int *,int *,int,int ) ;
 int * force_reg (int,int *) ;
 int gcc_unreachable () ;
 int * gen_highpart (int,int *) ;
 int * gen_lowpart (int,int *) ;
 int * gen_reg_rtx (int const) ;
 int gen_rtvec (int,int *,int *) ;
 int gen_rtvec_v (int,int **) ;
 int gen_rtx_CLOBBER (int ,int *) ;
 int * gen_rtx_PARALLEL (int const,int ) ;
 int gen_rtx_SET (int ,int *,int ) ;
 int gen_rtx_VEC_CONCAT (int,int *,int *) ;
 int ix86_expand_vector_init (int,int *,int *) ;
 int register_operand (int *,int) ;
 int word_mode ;

__attribute__((used)) static void
ix86_expand_vector_init_general (bool mmx_ok, enum machine_mode mode,
     rtx target, rtx vals)
{
  enum machine_mode half_mode = GET_MODE_INNER (mode);
  rtx op0 = ((void*)0), op1 = ((void*)0);
  bool use_vec_concat = 0;

  switch (mode)
    {
    case 134:
    case 133:
      if (!mmx_ok && !TARGET_SSE)
 break;


    case 136:
    case 135:

      op0 = XVECEXP (vals, 0, 0);
      op1 = XVECEXP (vals, 0, 1);
      use_vec_concat = 1;
      break;

    case 131:
      half_mode = 134;
      goto half;
    case 130:
      half_mode = 133;
      goto half;
    half:
      {
 rtvec v;




 op0 = gen_reg_rtx (half_mode);
 v = gen_rtvec (2, XVECEXP (vals, 0, 0), XVECEXP (vals, 0, 1));
 ix86_expand_vector_init (0, op0, gen_rtx_PARALLEL (half_mode, v));

 op1 = gen_reg_rtx (half_mode);
 v = gen_rtvec (2, XVECEXP (vals, 0, 2), XVECEXP (vals, 0, 3));
 ix86_expand_vector_init (0, op1, gen_rtx_PARALLEL (half_mode, v));

 use_vec_concat = 1;
      }
      break;

    case 129:
    case 137:
    case 132:
    case 128:
      break;

    default:
      gcc_unreachable ();
    }

  if (use_vec_concat)
    {
      if (!register_operand (op0, half_mode))
 op0 = force_reg (half_mode, op0);
      if (!register_operand (op1, half_mode))
 op1 = force_reg (half_mode, op1);

      emit_insn (gen_rtx_SET (VOIDmode, target,
         gen_rtx_VEC_CONCAT (mode, op0, op1)));
    }
  else
    {
      int i, j, n_elts, n_words, n_elt_per_word;
      enum machine_mode inner_mode;
      rtx words[4], shift;

      inner_mode = GET_MODE_INNER (mode);
      n_elts = GET_MODE_NUNITS (mode);
      n_words = GET_MODE_SIZE (mode) / UNITS_PER_WORD;
      n_elt_per_word = n_elts / n_words;
      shift = GEN_INT (GET_MODE_BITSIZE (inner_mode));

      for (i = 0; i < n_words; ++i)
 {
   rtx word = NULL_RTX;

   for (j = 0; j < n_elt_per_word; ++j)
     {
       rtx elt = XVECEXP (vals, 0, (i+1)*n_elt_per_word - j - 1);
       elt = convert_modes (word_mode, inner_mode, elt, 1);

       if (j == 0)
  word = elt;
       else
  {
    word = expand_simple_binop (word_mode, ASHIFT, word, shift,
           word, 1, OPTAB_LIB_WIDEN);
    word = expand_simple_binop (word_mode, IOR, word, elt,
           word, 1, OPTAB_LIB_WIDEN);
  }
     }

   words[i] = word;
 }

      if (n_words == 1)
 emit_move_insn (target, gen_lowpart (mode, words[0]));
      else if (n_words == 2)
 {
   rtx tmp = gen_reg_rtx (mode);
   emit_insn (gen_rtx_CLOBBER (VOIDmode, tmp));
   emit_move_insn (gen_lowpart (word_mode, tmp), words[0]);
   emit_move_insn (gen_highpart (word_mode, tmp), words[1]);
   emit_move_insn (target, tmp);
 }
      else if (n_words == 4)
 {
   rtx tmp = gen_reg_rtx (130);
   vals = gen_rtx_PARALLEL (130, gen_rtvec_v (4, words));
   ix86_expand_vector_init_general (0, 130, tmp, vals);
   emit_move_insn (target, gen_lowpart (mode, tmp));
 }
      else
 gcc_unreachable ();
    }
}
