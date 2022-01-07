
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;


 int DImode ;
 scalar_t__ GP_RETURN ;
 int Pmode ;
 int SYMBOL_DTPREL ;
 int SYMBOL_GOTTPREL ;
 int SYMBOL_REF_TLS_MODEL (int ) ;
 int SYMBOL_TLSGD ;
 int SYMBOL_TLSLDM ;
 int SYMBOL_TPREL ;
 int TARGET_ABICALLS ;




 int UNSPEC_TLS_LDM ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_libcall_block (int ,int ,int ,int ) ;
 int gcc_unreachable () ;
 int gen_add3_insn (int ,int ,int ) ;
 int gen_load_gotdi (int ,int ,int ) ;
 int gen_load_gotsi (int ,int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_LO_SUM (int ,int ,int ) ;
 int gen_rtx_REG (int ,scalar_t__) ;
 int gen_rtx_UNSPEC (int ,int ,int ) ;
 int gen_tls_get_tp_di (int ) ;
 int gen_tls_get_tp_si (int ) ;
 int mips_call_tls_get_addr (int ,int ,int ) ;
 int mips_unspec_address (int ,int ) ;
 int mips_unspec_offset_high (int *,int ,int ,int ) ;
 int pic_offset_table_rtx ;

__attribute__((used)) static rtx
mips_legitimize_tls_address (rtx loc)
{
  rtx dest, insn, v0, v1, tmp1, tmp2, eqv;
  enum tls_model model;

  v0 = gen_rtx_REG (Pmode, GP_RETURN);
  v1 = gen_rtx_REG (Pmode, GP_RETURN + 1);

  model = SYMBOL_REF_TLS_MODEL (loc);



  if (!TARGET_ABICALLS)
    model = 128;

  switch (model)
    {
    case 131:
      insn = mips_call_tls_get_addr (loc, SYMBOL_TLSGD, v0);
      dest = gen_reg_rtx (Pmode);
      emit_libcall_block (insn, dest, v0, loc);
      break;

    case 129:
      insn = mips_call_tls_get_addr (loc, SYMBOL_TLSLDM, v0);
      tmp1 = gen_reg_rtx (Pmode);



      eqv = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, const0_rtx),
       UNSPEC_TLS_LDM);
      emit_libcall_block (insn, tmp1, v0, eqv);

      tmp2 = mips_unspec_offset_high (((void*)0), tmp1, loc, SYMBOL_DTPREL);
      dest = gen_rtx_LO_SUM (Pmode, tmp2,
        mips_unspec_address (loc, SYMBOL_DTPREL));
      break;

    case 130:
      tmp1 = gen_reg_rtx (Pmode);
      tmp2 = mips_unspec_address (loc, SYMBOL_GOTTPREL);
      if (Pmode == DImode)
 {
   emit_insn (gen_tls_get_tp_di (v1));
   emit_insn (gen_load_gotdi (tmp1, pic_offset_table_rtx, tmp2));
 }
      else
 {
   emit_insn (gen_tls_get_tp_si (v1));
   emit_insn (gen_load_gotsi (tmp1, pic_offset_table_rtx, tmp2));
 }
      dest = gen_reg_rtx (Pmode);
      emit_insn (gen_add3_insn (dest, tmp1, v1));
      break;

    case 128:
      if (Pmode == DImode)
 emit_insn (gen_tls_get_tp_di (v1));
      else
 emit_insn (gen_tls_get_tp_si (v1));

      tmp1 = mips_unspec_offset_high (((void*)0), v1, loc, SYMBOL_TPREL);
      dest = gen_rtx_LO_SUM (Pmode, tmp1,
        mips_unspec_address (loc, SYMBOL_TPREL));
      break;

    default:
      gcc_unreachable ();
    }

  return dest;
}
