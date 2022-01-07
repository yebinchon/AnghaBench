
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int JUMP_LABEL ;


 int CCNOmode ;
 int CCmode ;
 scalar_t__ CONST_INT ;
 int EQ ;
 int FLAGS_REG ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GTU ;
 int INTVAL (int ) ;
 int NULL_RTX ;
 int OPTAB_WIDEN ;
 int Pmode ;
 int QImode ;
 int SImode ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_CMOVE ;
 int VOIDmode ;
 int and_optab ;
 int change_address (int ,int ,int ) ;
 int const0_rtx ;
 int const1_rtx ;
 int const2_rtx ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int *,int ,int,int ) ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_binop (int ,int ,int ,int ,int ,int ,int ) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_addqi3_cc (int ,int ,int ) ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_andsi3 (int ,int ,int ) ;
 int gen_int_mode (int,int ) ;
 int gen_label_rtx () ;
 int gen_lowpart (int ,int ) ;
 int gen_lshrsi3 (int ,int ,int ) ;
 int gen_one_cmplsi2 (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_EQ (int ,int ,int ) ;
 int gen_rtx_IF_THEN_ELSE (int ,int ,int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_LTU (int ,int ,int ) ;
 int gen_rtx_NE (int ,int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_subdi3_carry_rex64 (int ,int ,int ,int ) ;
 int gen_subsi3_carry (int ,int ,int ,int ) ;
 int gen_testsi_ccno_1 (int ,int ) ;
 int pc_rtx ;

__attribute__((used)) static void
ix86_expand_strlensi_unroll_1 (rtx out, rtx src, rtx align_rtx)
{
  int align;
  rtx tmp;
  rtx align_2_label = NULL_RTX;
  rtx align_3_label = NULL_RTX;
  rtx align_4_label = gen_label_rtx ();
  rtx end_0_label = gen_label_rtx ();
  rtx mem;
  rtx tmpreg = gen_reg_rtx (SImode);
  rtx scratch = gen_reg_rtx (SImode);
  rtx cmp;

  align = 0;
  if (GET_CODE (align_rtx) == CONST_INT)
    align = INTVAL (align_rtx);




  if (align < 4)
    {
      rtx scratch1 = gen_reg_rtx (Pmode);
      emit_move_insn (scratch1, out);

      if (align != 2)
 {
   align_3_label = gen_label_rtx ();
   align_2_label = gen_label_rtx ();


   align_rtx = expand_binop (Pmode, and_optab, scratch1, GEN_INT (3),
        NULL_RTX, 0, OPTAB_WIDEN);

   emit_cmp_and_jump_insns (align_rtx, const0_rtx, EQ, ((void*)0),
       Pmode, 1, align_4_label);
   emit_cmp_and_jump_insns (align_rtx, const2_rtx, EQ, ((void*)0),
       Pmode, 1, align_2_label);
   emit_cmp_and_jump_insns (align_rtx, const2_rtx, GTU, ((void*)0),
       Pmode, 1, align_3_label);
 }
      else
        {



   align_rtx = expand_binop (Pmode, and_optab, scratch1, const2_rtx,
        NULL_RTX, 0, OPTAB_WIDEN);

   emit_cmp_and_jump_insns (align_rtx, const0_rtx, EQ, ((void*)0),
       Pmode, 1, align_4_label);
        }

      mem = change_address (src, QImode, out);




      emit_cmp_and_jump_insns (mem, const0_rtx, EQ, ((void*)0),
          QImode, 1, end_0_label);


      if (TARGET_64BIT)
 emit_insn (gen_adddi3 (out, out, const1_rtx));
      else
 emit_insn (gen_addsi3 (out, out, const1_rtx));


      if (align != 2)
 {
   emit_label (align_2_label);

   emit_cmp_and_jump_insns (mem, const0_rtx, EQ, ((void*)0), QImode, 1,
       end_0_label);

   if (TARGET_64BIT)
     emit_insn (gen_adddi3 (out, out, const1_rtx));
   else
     emit_insn (gen_addsi3 (out, out, const1_rtx));

   emit_label (align_3_label);
 }

      emit_cmp_and_jump_insns (mem, const0_rtx, EQ, ((void*)0), QImode, 1,
          end_0_label);

      if (TARGET_64BIT)
 emit_insn (gen_adddi3 (out, out, const1_rtx));
      else
 emit_insn (gen_addsi3 (out, out, const1_rtx));
    }




  emit_label (align_4_label);

  mem = change_address (src, SImode, out);
  emit_move_insn (scratch, mem);
  if (TARGET_64BIT)
    emit_insn (gen_adddi3 (out, out, GEN_INT (4)));
  else
    emit_insn (gen_addsi3 (out, out, GEN_INT (4)));




  emit_insn (gen_addsi3 (tmpreg, scratch, GEN_INT (-0x01010101)));
  emit_insn (gen_one_cmplsi2 (scratch, scratch));
  emit_insn (gen_andsi3 (tmpreg, tmpreg, scratch));
  emit_insn (gen_andsi3 (tmpreg, tmpreg,
    gen_int_mode (0x80808080, SImode)));
  emit_cmp_and_jump_insns (tmpreg, const0_rtx, EQ, 0, SImode, 1,
      align_4_label);

  if (TARGET_CMOVE)
    {
       rtx reg = gen_reg_rtx (SImode);
       rtx reg2 = gen_reg_rtx (Pmode);
       emit_move_insn (reg, tmpreg);
       emit_insn (gen_lshrsi3 (reg, reg, GEN_INT (16)));


       emit_insn (gen_testsi_ccno_1 (tmpreg, GEN_INT (0x8080)));
       tmp = gen_rtx_REG (CCNOmode, FLAGS_REG);
       tmp = gen_rtx_EQ (VOIDmode, tmp, const0_rtx);
       emit_insn (gen_rtx_SET (VOIDmode, tmpreg,
          gen_rtx_IF_THEN_ELSE (SImode, tmp,
           reg,
           tmpreg)));

       emit_insn (gen_rtx_SET (SImode, reg2,
          gen_rtx_PLUS (Pmode, out, const2_rtx)));

       tmp = gen_rtx_REG (CCNOmode, FLAGS_REG);
       tmp = gen_rtx_EQ (VOIDmode, tmp, const0_rtx);
       emit_insn (gen_rtx_SET (VOIDmode, out,
          gen_rtx_IF_THEN_ELSE (Pmode, tmp,
           reg2,
           out)));

    }
  else
    {
       rtx end_2_label = gen_label_rtx ();


       emit_insn (gen_testsi_ccno_1 (tmpreg, GEN_INT (0x8080)));
       tmp = gen_rtx_REG (CCNOmode, FLAGS_REG);
       tmp = gen_rtx_NE (VOIDmode, tmp, const0_rtx);
       tmp = gen_rtx_IF_THEN_ELSE (VOIDmode, tmp,
                            gen_rtx_LABEL_REF (VOIDmode, end_2_label),
                            pc_rtx);
       tmp = emit_jump_insn (gen_rtx_SET (VOIDmode, pc_rtx, tmp));
       JUMP_LABEL (tmp) = end_2_label;


       emit_insn (gen_lshrsi3 (tmpreg, tmpreg, GEN_INT (16)));
       if (TARGET_64BIT)
  emit_insn (gen_adddi3 (out, out, const2_rtx));
       else
  emit_insn (gen_addsi3 (out, out, const2_rtx));

       emit_label (end_2_label);

    }


  tmpreg = gen_lowpart (QImode, tmpreg);
  emit_insn (gen_addqi3_cc (tmpreg, tmpreg, tmpreg));
  cmp = gen_rtx_LTU (Pmode, gen_rtx_REG (CCmode, 17), const0_rtx);
  if (TARGET_64BIT)
    emit_insn (gen_subdi3_carry_rex64 (out, out, GEN_INT (3), cmp));
  else
    emit_insn (gen_subsi3_carry (out, out, GEN_INT (3), cmp));

  emit_label (end_0_label);
}
