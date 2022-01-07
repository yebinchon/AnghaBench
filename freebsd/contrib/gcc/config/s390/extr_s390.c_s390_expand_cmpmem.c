
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCUmode ;
 int CC_REGNUM ;
 scalar_t__ CONST_INT ;
 int EQ ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 int NULL_RTX ;
 int Pmode ;
 scalar_t__ TARGET_MVCLE ;
 int VOIDmode ;
 int XEXP (scalar_t__,int ) ;
 int add_optab ;
 scalar_t__ change_address (scalar_t__,int,scalar_t__) ;
 scalar_t__ const0_rtx ;
 int constm1_rtx ;
 int convert_move (scalar_t__,scalar_t__,int) ;
 int convert_to_mode (int,scalar_t__,int) ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int ,int ,int,int,scalar_t__) ;
 int emit_insn (int ) ;
 int emit_jump (scalar_t__) ;
 int emit_jump_insn (scalar_t__) ;
 int emit_label (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int,int ,scalar_t__,int ,scalar_t__,int,int ) ;
 scalar_t__ force_operand (int ,int ) ;
 int gen_cmpint (scalar_t__,scalar_t__) ;
 int gen_cmpmem_long (scalar_t__,scalar_t__,int ) ;
 int gen_cmpmem_short (scalar_t__,scalar_t__,int ) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ gen_rtx_IF_THEN_ELSE (int,scalar_t__,int ,int ) ;
 int gen_rtx_LABEL_REF (int,scalar_t__) ;
 scalar_t__ gen_rtx_NE (int,scalar_t__,scalar_t__) ;
 int gen_rtx_PLUS (int,scalar_t__,int ) ;
 scalar_t__ gen_rtx_REG (int ,int ) ;
 scalar_t__ gen_rtx_SET (int,int ,scalar_t__) ;
 int lshr_optab ;
 int pc_rtx ;
 int s390_load_address (scalar_t__,int ) ;

void
s390_expand_cmpmem (rtx target, rtx op0, rtx op1, rtx len)
{
  rtx ccreg = gen_rtx_REG (CCUmode, CC_REGNUM);
  rtx tmp;



  tmp = op0; op0 = op1; op1 = tmp;

  if (GET_CODE (len) == CONST_INT && INTVAL (len) >= 0 && INTVAL (len) <= 256)
    {
      if (INTVAL (len) > 0)
        {
          emit_insn (gen_cmpmem_short (op0, op1, GEN_INT (INTVAL (len) - 1)));
          emit_insn (gen_cmpint (target, ccreg));
        }
      else
        emit_move_insn (target, const0_rtx);
    }
  else if (TARGET_MVCLE)
    {
      emit_insn (gen_cmpmem_long (op0, op1, convert_to_mode (Pmode, len, 1)));
      emit_insn (gen_cmpint (target, ccreg));
    }
  else
    {
      rtx addr0, addr1, count, blocks, temp;
      rtx loop_start_label = gen_label_rtx ();
      rtx loop_end_label = gen_label_rtx ();
      rtx end_label = gen_label_rtx ();
      enum machine_mode mode;

      mode = GET_MODE (len);
      if (mode == VOIDmode)
        mode = Pmode;

      addr0 = gen_reg_rtx (Pmode);
      addr1 = gen_reg_rtx (Pmode);
      count = gen_reg_rtx (mode);
      blocks = gen_reg_rtx (mode);

      convert_move (count, len, 1);
      emit_cmp_and_jump_insns (count, const0_rtx,
          EQ, NULL_RTX, mode, 1, end_label);

      emit_move_insn (addr0, force_operand (XEXP (op0, 0), NULL_RTX));
      emit_move_insn (addr1, force_operand (XEXP (op1, 0), NULL_RTX));
      op0 = change_address (op0, VOIDmode, addr0);
      op1 = change_address (op1, VOIDmode, addr1);

      temp = expand_binop (mode, add_optab, count, constm1_rtx, count, 1, 0);
      if (temp != count)
        emit_move_insn (count, temp);

      temp = expand_binop (mode, lshr_optab, count, GEN_INT (8), blocks, 1, 0);
      if (temp != blocks)
        emit_move_insn (blocks, temp);

      emit_cmp_and_jump_insns (blocks, const0_rtx,
          EQ, NULL_RTX, mode, 1, loop_end_label);

      emit_label (loop_start_label);

      emit_insn (gen_cmpmem_short (op0, op1, GEN_INT (255)));
      temp = gen_rtx_NE (VOIDmode, ccreg, const0_rtx);
      temp = gen_rtx_IF_THEN_ELSE (VOIDmode, temp,
   gen_rtx_LABEL_REF (VOIDmode, end_label), pc_rtx);
      temp = gen_rtx_SET (VOIDmode, pc_rtx, temp);
      emit_jump_insn (temp);

      s390_load_address (addr0,
    gen_rtx_PLUS (Pmode, addr0, GEN_INT (256)));
      s390_load_address (addr1,
    gen_rtx_PLUS (Pmode, addr1, GEN_INT (256)));

      temp = expand_binop (mode, add_optab, blocks, constm1_rtx, blocks, 1, 0);
      if (temp != blocks)
        emit_move_insn (blocks, temp);

      emit_cmp_and_jump_insns (blocks, const0_rtx,
          EQ, NULL_RTX, mode, 1, loop_end_label);

      emit_jump (loop_start_label);
      emit_label (loop_end_label);

      emit_insn (gen_cmpmem_short (op0, op1,
       convert_to_mode (Pmode, count, 1)));
      emit_label (end_label);

      emit_insn (gen_cmpint (target, ccreg));
    }
}
