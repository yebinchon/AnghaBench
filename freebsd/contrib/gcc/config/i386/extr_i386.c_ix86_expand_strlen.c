
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 int Pmode ;
 int QImode ;
 scalar_t__ TARGET_64BIT ;
 int TARGET_INLINE_ALL_STRINGOPS ;
 scalar_t__ TARGET_UNROLL_STRLEN ;
 int UNSPEC_SCAS ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ const0_rtx ;
 scalar_t__ constm1_rtx ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ force_reg (int ,scalar_t__) ;
 int gen_adddi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_addsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_cld () ;
 int gen_one_cmpldi2 (scalar_t__,scalar_t__) ;
 int gen_one_cmplsi2 (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int gen_rtvec (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (int ,int ,int ) ;
 int gen_strlenqi_1 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_subdi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_subsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int ix86_expand_strlensi_unroll_1 (scalar_t__,scalar_t__,scalar_t__) ;
 int optimize ;
 int optimize_size ;
 scalar_t__ replace_equiv_address_nv (scalar_t__,scalar_t__) ;

int
ix86_expand_strlen (rtx out, rtx src, rtx eoschar, rtx align)
{
  rtx addr, scratch1, scratch2, scratch3, scratch4;




  if (TARGET_UNROLL_STRLEN && eoschar == const0_rtx && optimize > 1
      && !TARGET_INLINE_ALL_STRINGOPS
      && !optimize_size
      && (GET_CODE (align) != CONST_INT || INTVAL (align) < 4))
    return 0;

  addr = force_reg (Pmode, XEXP (src, 0));
  scratch1 = gen_reg_rtx (Pmode);

  if (TARGET_UNROLL_STRLEN && eoschar == const0_rtx && optimize > 1
      && !optimize_size)
    {
      emit_move_insn (out, addr);

      ix86_expand_strlensi_unroll_1 (out, src, align);




      if (TARGET_64BIT)
 emit_insn (gen_subdi3 (out, out, addr));
      else
 emit_insn (gen_subsi3 (out, out, addr));
    }
  else
    {
      rtx unspec;
      scratch2 = gen_reg_rtx (Pmode);
      scratch3 = gen_reg_rtx (Pmode);
      scratch4 = force_reg (Pmode, constm1_rtx);

      emit_move_insn (scratch3, addr);
      eoschar = force_reg (QImode, eoschar);

      emit_insn (gen_cld ());
      src = replace_equiv_address_nv (src, scratch3);


      unspec = gen_rtx_UNSPEC (Pmode, gen_rtvec (4, src, eoschar, align,
       scratch4), UNSPEC_SCAS);
      emit_insn (gen_strlenqi_1 (scratch1, scratch3, unspec));
      if (TARGET_64BIT)
 {
   emit_insn (gen_one_cmpldi2 (scratch2, scratch1));
   emit_insn (gen_adddi3 (out, scratch2, constm1_rtx));
 }
      else
 {
   emit_insn (gen_one_cmplsi2 (scratch2, scratch1));
   emit_insn (gen_addsi3 (out, scratch2, constm1_rtx));
 }
    }
  return 1;
}
