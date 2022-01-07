
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ABS ;
 int AND ;
 int CCmode ;
 int FLAGS_REG ;
 int GET_MODE_INNER (int) ;
 scalar_t__ MEM_P (scalar_t__) ;
 int NEG ;
 scalar_t__ NULL_RTX ;
 int SSE_FLOAT_MODE_P (int) ;
 scalar_t__ TARGET_SSE_MATH ;
 int VECTOR_MODE_P (int) ;
 int VOIDmode ;
 int XOR ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rtvec (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_CLOBBER (int ,int ) ;
 scalar_t__ gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_USE (int ,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_e (int,int,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int ,int,scalar_t__,scalar_t__) ;
 scalar_t__ ix86_build_signbit_mask (int,int,int) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

void
ix86_expand_fp_absneg_operator (enum rtx_code code, enum machine_mode mode,
    rtx operands[])
{
  rtx mask, set, use, clob, dst, src;
  bool matching_memory;
  bool use_sse = 0;
  bool vector_mode = VECTOR_MODE_P (mode);
  enum machine_mode elt_mode = mode;

  if (vector_mode)
    {
      elt_mode = GET_MODE_INNER (mode);
      use_sse = 1;
    }
  else if (TARGET_SSE_MATH)
    use_sse = SSE_FLOAT_MODE_P (mode);



  if (use_sse)
    mask = ix86_build_signbit_mask (elt_mode, vector_mode, code == ABS);
  else
    mask = NULL_RTX;

  dst = operands[0];
  src = operands[1];



  matching_memory = 0;
  if (MEM_P (dst))
    {
      if (use_sse && rtx_equal_p (dst, src))
 matching_memory = 1;
      else
 dst = gen_reg_rtx (mode);
    }
  if (MEM_P (src) && !matching_memory)
    src = force_reg (mode, src);

  if (vector_mode)
    {
      set = gen_rtx_fmt_ee (code == NEG ? XOR : AND, mode, src, mask);
      set = gen_rtx_SET (VOIDmode, dst, set);
      emit_insn (set);
    }
  else
    {
      set = gen_rtx_fmt_e (code, mode, src);
      set = gen_rtx_SET (VOIDmode, dst, set);
      if (mask)
        {
          use = gen_rtx_USE (VOIDmode, mask);
          clob = gen_rtx_CLOBBER (VOIDmode, gen_rtx_REG (CCmode, FLAGS_REG));
          emit_insn (gen_rtx_PARALLEL (VOIDmode,
           gen_rtvec (3, set, use, clob)));
        }
      else
 emit_insn (set);
    }

  if (dst != operands[0])
    emit_move_insn (operands[0], dst);
}
