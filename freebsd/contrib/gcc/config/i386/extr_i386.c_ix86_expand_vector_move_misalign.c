
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST0_RTX (int) ;
 int DFmode ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ MODE_VECTOR_INT ;
 scalar_t__ TARGET_SSE2 ;
 scalar_t__ TARGET_SSE_PARTIAL_REG_DEPENDENCY ;
 scalar_t__ TARGET_SSE_SPLIT_REGS ;
 int TARGET_SSE_TYPELESS_STORES ;
 scalar_t__ TARGET_SSE_UNALIGNED_MOVE_OPTIMAL ;
 int V16QImode ;
 int V2DFmode ;
 int V2SFmode ;
 int V4SFmode ;
 int VOIDmode ;
 int adjust_address (int ,int ,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_unreachable () ;
 int gen_lowpart (int,int ) ;
 int gen_rtx_CLOBBER (int ,int ) ;
 int gen_sse2_loadhpd (int ,int ,int ) ;
 int gen_sse2_loadlpd (int ,int ,int ) ;
 int gen_sse2_movdqu (int ,int ) ;
 int gen_sse2_movupd (int ,int ) ;
 int gen_sse2_storehpd (int ,int ) ;
 int gen_sse2_storelpd (int ,int ) ;
 int gen_sse_loadhps (int ,int ,int ) ;
 int gen_sse_loadlps (int ,int ,int ) ;
 int gen_sse_movups (int ,int ) ;
 int gen_sse_storehps (int ,int ) ;
 int gen_sse_storelps (int ,int ) ;
 scalar_t__ optimize_size ;

void
ix86_expand_vector_move_misalign (enum machine_mode mode, rtx operands[])
{
  rtx op0, op1, m;

  op0 = operands[0];
  op1 = operands[1];

  if (MEM_P (op1))
    {

      if (optimize_size)
 {
   op0 = gen_lowpart (V4SFmode, op0);
   op1 = gen_lowpart (V4SFmode, op1);
   emit_insn (gen_sse_movups (op0, op1));
   return;
 }




      if (TARGET_SSE2 && GET_MODE_CLASS (mode) == MODE_VECTOR_INT)
 {
   op0 = gen_lowpart (V16QImode, op0);
   op1 = gen_lowpart (V16QImode, op1);
   emit_insn (gen_sse2_movdqu (op0, op1));
   return;
 }

      if (TARGET_SSE2 && mode == V2DFmode)
        {
          rtx zero;

          if (TARGET_SSE_UNALIGNED_MOVE_OPTIMAL)
            {
              op0 = gen_lowpart (V2DFmode, op0);
              op1 = gen_lowpart (V2DFmode, op1);
              emit_insn (gen_sse2_movupd (op0, op1));
              return;
            }



   if (TARGET_SSE_SPLIT_REGS)
     {
       emit_insn (gen_rtx_CLOBBER (VOIDmode, op0));
       zero = op0;
     }
   else
     {
       zero = CONST0_RTX (V2DFmode);
     }

   m = adjust_address (op1, DFmode, 0);
   emit_insn (gen_sse2_loadlpd (op0, zero, m));
   m = adjust_address (op1, DFmode, 8);
   emit_insn (gen_sse2_loadhpd (op0, op0, m));
 }
      else
        {
          if (TARGET_SSE_UNALIGNED_MOVE_OPTIMAL)
            {
              op0 = gen_lowpart (V4SFmode, op0);
              op1 = gen_lowpart (V4SFmode, op1);
              emit_insn (gen_sse_movups (op0, op1));
              return;
            }

   if (TARGET_SSE_PARTIAL_REG_DEPENDENCY)
     emit_move_insn (op0, CONST0_RTX (mode));
   else
     emit_insn (gen_rtx_CLOBBER (VOIDmode, op0));

   if (mode != V4SFmode)
     op0 = gen_lowpart (V4SFmode, op0);
   m = adjust_address (op1, V2SFmode, 0);
   emit_insn (gen_sse_loadlps (op0, op0, m));
   m = adjust_address (op1, V2SFmode, 8);
   emit_insn (gen_sse_loadhps (op0, op0, m));
 }
    }
  else if (MEM_P (op0))
    {

      if (optimize_size)
 {
   op0 = gen_lowpart (V4SFmode, op0);
   op1 = gen_lowpart (V4SFmode, op1);
   emit_insn (gen_sse_movups (op0, op1));
   return;
 }



      if (TARGET_SSE2 && !TARGET_SSE_TYPELESS_STORES
   && GET_MODE_CLASS (mode) == MODE_VECTOR_INT)
        {
   op0 = gen_lowpart (V16QImode, op0);
   op1 = gen_lowpart (V16QImode, op1);
   emit_insn (gen_sse2_movdqu (op0, op1));
   return;
 }

      if (TARGET_SSE2 && mode == V2DFmode)
 {
   m = adjust_address (op0, DFmode, 0);
   emit_insn (gen_sse2_storelpd (m, op1));
   m = adjust_address (op0, DFmode, 8);
   emit_insn (gen_sse2_storehpd (m, op1));
 }
      else
 {
   if (mode != V4SFmode)
     op1 = gen_lowpart (V4SFmode, op1);
   m = adjust_address (op0, V2SFmode, 0);
   emit_insn (gen_sse_storelps (m, op1));
   m = adjust_address (op0, V2SFmode, 8);
   emit_insn (gen_sse_storehps (m, op1));
 }
    }
  else
    gcc_unreachable ();
}
