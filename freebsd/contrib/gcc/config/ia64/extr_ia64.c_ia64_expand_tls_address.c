
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 scalar_t__ GET_MODE (int ) ;
 int LCT_CONST ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;
 int PLUS ;
 scalar_t__ Pmode ;
 int TARGET_TLS64 ;




 int UNSPEC_LD_BASE ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_libcall_block (int ,int ,int ,int ) ;
 int emit_library_call_value (int ,int ,int ,scalar_t__,int,int ,scalar_t__,int ,scalar_t__) ;
 int end_sequence () ;
 int expand_simple_binop (scalar_t__,int ,int ,int ,int ,int,int ) ;
 int gcc_unreachable () ;
 int gen_add_dtprel (int ,int ,int ) ;
 int gen_add_tprel (int ,int ,int ) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_load_dtpmod (int ,int ) ;
 int gen_load_dtprel (int ,int ) ;
 int gen_load_tprel (int ,int ) ;
 int gen_lowpart (scalar_t__,int ) ;
 int gen_reg_rtx (scalar_t__) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_UNSPEC (scalar_t__,int ,int ) ;
 int gen_thread_pointer () ;
 int gen_tls_get_addr () ;
 int get_insns () ;
 int plus_constant (int ,int) ;
 int register_operand (int ,scalar_t__) ;
 int start_sequence () ;

__attribute__((used)) static rtx
ia64_expand_tls_address (enum tls_model tls_kind, rtx op0, rtx op1,
    rtx orig_op1, HOST_WIDE_INT addend)
{
  rtx tga_op1, tga_op2, tga_ret, tga_eqv, tmp, insns;
  rtx orig_op0 = op0;
  HOST_WIDE_INT addend_lo, addend_hi;

  switch (tls_kind)
    {
    case 131:
      start_sequence ();

      tga_op1 = gen_reg_rtx (Pmode);
      emit_insn (gen_load_dtpmod (tga_op1, op1));

      tga_op2 = gen_reg_rtx (Pmode);
      emit_insn (gen_load_dtprel (tga_op2, op1));

      tga_ret = emit_library_call_value (gen_tls_get_addr (), NULL_RTX,
      LCT_CONST, Pmode, 2, tga_op1,
      Pmode, tga_op2, Pmode);

      insns = get_insns ();
      end_sequence ();

      if (GET_MODE (op0) != Pmode)
 op0 = tga_ret;
      emit_libcall_block (insns, op0, tga_ret, op1);
      break;

    case 129:




      start_sequence ();

      tga_op1 = gen_reg_rtx (Pmode);
      emit_insn (gen_load_dtpmod (tga_op1, op1));

      tga_op2 = const0_rtx;

      tga_ret = emit_library_call_value (gen_tls_get_addr (), NULL_RTX,
      LCT_CONST, Pmode, 2, tga_op1,
      Pmode, tga_op2, Pmode);

      insns = get_insns ();
      end_sequence ();

      tga_eqv = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, const0_rtx),
    UNSPEC_LD_BASE);
      tmp = gen_reg_rtx (Pmode);
      emit_libcall_block (insns, tmp, tga_ret, tga_eqv);

      if (!register_operand (op0, Pmode))
 op0 = gen_reg_rtx (Pmode);
      if (TARGET_TLS64)
 {
   emit_insn (gen_load_dtprel (op0, op1));
   emit_insn (gen_adddi3 (op0, tmp, op0));
 }
      else
 emit_insn (gen_add_dtprel (op0, op1, tmp));
      break;

    case 130:
      addend_lo = ((addend & 0x3fff) ^ 0x2000) - 0x2000;
      addend_hi = addend - addend_lo;

      op1 = plus_constant (op1, addend_hi);
      addend = addend_lo;

      tmp = gen_reg_rtx (Pmode);
      emit_insn (gen_load_tprel (tmp, op1));

      if (!register_operand (op0, Pmode))
 op0 = gen_reg_rtx (Pmode);
      emit_insn (gen_adddi3 (op0, tmp, gen_thread_pointer ()));
      break;

    case 128:
      if (!register_operand (op0, Pmode))
 op0 = gen_reg_rtx (Pmode);

      op1 = orig_op1;
      addend = 0;
      if (TARGET_TLS64)
 {
   emit_insn (gen_load_tprel (op0, op1));
   emit_insn (gen_adddi3 (op0, op0, gen_thread_pointer ()));
 }
      else
 emit_insn (gen_add_tprel (op0, op1, gen_thread_pointer ()));
      break;

    default:
      gcc_unreachable ();
    }

  if (addend)
    op0 = expand_simple_binop (Pmode, PLUS, op0, GEN_INT (addend),
          orig_op0, 1, OPTAB_DIRECT);
  if (orig_op0 == op0)
    return NULL_RTX;
  if (GET_MODE (orig_op0) == Pmode)
    return op0;
  return gen_lowpart (GET_MODE (orig_op0), op0);
}
