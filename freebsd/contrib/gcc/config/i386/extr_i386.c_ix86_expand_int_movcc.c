
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int optab ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int AND ;
 int BRANCH_COST ;
 scalar_t__ CCFPUmode ;
 scalar_t__ CCFPmode ;
 scalar_t__ CONST_INT ;
 int DImode ;
 scalar_t__ FLOAT_MODE_P (scalar_t__) ;
 int GE ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (scalar_t__) ;
 int GT ;
 int HImode ;
 int INTVAL (scalar_t__) ;
 int IOR ;
 int LE ;
 int LT ;
 int LTU ;
 scalar_t__ MODE_INT ;
 int NOT ;
 int OPTAB_DIRECT ;
 int OPTAB_WIDEN ;
 int PLUS ;
 int PUT_CODE (scalar_t__,int) ;
 int QImode ;
 int SImode ;
 scalar_t__ TARGET_64BIT ;
 int TARGET_CMOVE ;
 scalar_t__ TARGET_FAST_PREFIX ;
 scalar_t__ TARGET_PARTIAL_REG_STALL ;
 int TImode ;
 int UNKNOWN ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 int and_optab ;
 scalar_t__ const0_rtx ;
 scalar_t__ constm1_rtx ;
 scalar_t__ copy_rtx (scalar_t__) ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ emit_store_flag (scalar_t__,int,scalar_t__,scalar_t__,int ,int ,int) ;
 int end_sequence () ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ expand_simple_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ expand_simple_unop (int,int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 scalar_t__ gen_int_mode (int,int) ;
 int gen_lowpart (int ,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ gen_rtx_IF_THEN_ELSE (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_MULT (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_x86_movdicc_0_m1_rex64 (scalar_t__,scalar_t__) ;
 scalar_t__ gen_x86_movsicc_0_m1 (int ,scalar_t__) ;
 scalar_t__ get_insns () ;
 int ior_optab ;
 scalar_t__ ix86_compare_op0 ;
 scalar_t__ ix86_compare_op1 ;
 scalar_t__ ix86_expand_carry_flag_compare (int,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ ix86_expand_compare (int,scalar_t__*,scalar_t__*) ;
 int ix86_fp_compare_code_to_integer (int) ;
 int nonimmediate_operand (scalar_t__,int) ;
 scalar_t__ reg_overlap_mentioned_p (scalar_t__,scalar_t__) ;
 int register_operand (scalar_t__,int ) ;
 int reverse_condition (int) ;
 int reverse_condition_maybe_unordered (int) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int start_sequence () ;
 scalar_t__ x86_64_immediate_operand (scalar_t__,int ) ;

int
ix86_expand_int_movcc (rtx operands[])
{
  enum rtx_code code = GET_CODE (operands[1]), compare_code;
  rtx compare_seq, compare_op;
  rtx second_test, bypass_test;
  enum machine_mode mode = GET_MODE (operands[0]);
  bool sign_bit_compare_p = 0;;

  start_sequence ();
  compare_op = ix86_expand_compare (code, &second_test, &bypass_test);
  compare_seq = get_insns ();
  end_sequence ();

  compare_code = GET_CODE (compare_op);

  if ((ix86_compare_op1 == const0_rtx && (code == GE || code == LT))
      || (ix86_compare_op1 == constm1_rtx && (code == GT || code == LE)))
    sign_bit_compare_p = 1;




  if ((mode != HImode || TARGET_FAST_PREFIX)
      && (mode != (TARGET_64BIT ? TImode : DImode))
      && GET_CODE (operands[2]) == CONST_INT
      && GET_CODE (operands[3]) == CONST_INT)
    {
      rtx out = operands[0];
      HOST_WIDE_INT ct = INTVAL (operands[2]);
      HOST_WIDE_INT cf = INTVAL (operands[3]);
      HOST_WIDE_INT diff;

      diff = ct - cf;


      if (sign_bit_compare_p
   || ix86_expand_carry_flag_compare (code, ix86_compare_op0,
          ix86_compare_op1, &compare_op))
 {

   rtx tmp = out;

          if (!sign_bit_compare_p)
     {
       bool fpcmp = 0;

       compare_code = GET_CODE (compare_op);

       if (GET_MODE (XEXP (compare_op, 0)) == CCFPmode
    || GET_MODE (XEXP (compare_op, 0)) == CCFPUmode)
  {
    fpcmp = 1;
    compare_code = ix86_fp_compare_code_to_integer (compare_code);
  }


       if (compare_code == LTU)
  {
    HOST_WIDE_INT tmp = ct;
    ct = cf;
    cf = tmp;
    compare_code = reverse_condition (compare_code);
    code = reverse_condition (code);
  }
       else
  {
    if (fpcmp)
      PUT_CODE (compare_op,
         reverse_condition_maybe_unordered
           (GET_CODE (compare_op)));
    else
      PUT_CODE (compare_op, reverse_condition (GET_CODE (compare_op)));
  }
       diff = ct - cf;

       if (reg_overlap_mentioned_p (out, ix86_compare_op0)
    || reg_overlap_mentioned_p (out, ix86_compare_op1))
  tmp = gen_reg_rtx (mode);

       if (mode == DImode)
  emit_insn (gen_x86_movdicc_0_m1_rex64 (tmp, compare_op));
       else
  emit_insn (gen_x86_movsicc_0_m1 (gen_lowpart (SImode, tmp), compare_op));
     }
   else
     {
       if (code == GT || code == GE)
  code = reverse_condition (code);
       else
  {
    HOST_WIDE_INT tmp = ct;
    ct = cf;
    cf = tmp;
    diff = ct - cf;
  }
       tmp = emit_store_flag (tmp, code, ix86_compare_op0,
         ix86_compare_op1, VOIDmode, 0, -1);
     }

   if (diff == 1)
     {







       if (ct)
  tmp = expand_simple_binop (mode, PLUS,
        tmp, GEN_INT (ct),
        copy_rtx (tmp), 1, OPTAB_DIRECT);
     }
   else if (cf == -1)
     {







       tmp = expand_simple_binop (mode, IOR,
      tmp, GEN_INT (ct),
      copy_rtx (tmp), 1, OPTAB_DIRECT);
     }
   else if (diff == -1 && ct)
     {
       tmp = expand_simple_unop (mode, NOT, tmp, copy_rtx (tmp), 1);
       if (cf)
  tmp = expand_simple_binop (mode, PLUS,
        copy_rtx (tmp), GEN_INT (cf),
        copy_rtx (tmp), 1, OPTAB_DIRECT);
     }
   else
     {
       if (cf == 0)
  {
    cf = ct;
    ct = 0;
    tmp = expand_simple_unop (mode, NOT, tmp, copy_rtx (tmp), 1);
  }

       tmp = expand_simple_binop (mode, AND,
      copy_rtx (tmp),
      gen_int_mode (cf - ct, mode),
      copy_rtx (tmp), 1, OPTAB_DIRECT);
       if (ct)
  tmp = expand_simple_binop (mode, PLUS,
        copy_rtx (tmp), GEN_INT (ct),
        copy_rtx (tmp), 1, OPTAB_DIRECT);
     }

   if (!rtx_equal_p (tmp, out))
     emit_move_insn (copy_rtx (out), copy_rtx (tmp));

   return 1;
 }

      if (diff < 0)
 {
   HOST_WIDE_INT tmp;
   tmp = ct, ct = cf, cf = tmp;
   diff = -diff;
   if (FLOAT_MODE_P (GET_MODE (ix86_compare_op0)))
     {




       compare_code = reverse_condition_maybe_unordered (compare_code);
       code = reverse_condition_maybe_unordered (code);
     }
   else
     {
       compare_code = reverse_condition (compare_code);
       code = reverse_condition (code);
     }
 }

      compare_code = UNKNOWN;
      if (GET_MODE_CLASS (GET_MODE (ix86_compare_op0)) == MODE_INT
   && GET_CODE (ix86_compare_op1) == CONST_INT)
 {
   if (ix86_compare_op1 == const0_rtx
       && (code == LT || code == GE))
     compare_code = code;
   else if (ix86_compare_op1 == constm1_rtx)
     {
       if (code == LE)
  compare_code = LT;
       else if (code == GT)
  compare_code = GE;
     }
 }


      if (compare_code != UNKNOWN
   && GET_MODE (ix86_compare_op0) == GET_MODE (out)
   && (cf == -1 || ct == -1))
 {



   if (! (diff == 1 || diff == 2 || diff == 4 || diff == 8
   || diff == 3 || diff == 5 || diff == 9)
       || (compare_code == LT && ct == -1)
       || (compare_code == GE && cf == -1))
     {





       if (ct != -1)
  {
    cf = ct;
    ct = -1;
    code = reverse_condition (code);
  }

       out = emit_store_flag (out, code, ix86_compare_op0,
         ix86_compare_op1, VOIDmode, 0, -1);

       out = expand_simple_binop (mode, IOR,
      out, GEN_INT (cf),
      out, 1, OPTAB_DIRECT);
       if (out != operands[0])
  emit_move_insn (operands[0], out);

       return 1;
     }
 }


      if ((diff == 1 || diff == 2 || diff == 4 || diff == 8
    || diff == 3 || diff == 5 || diff == 9)
   && ((mode != QImode && mode != HImode) || !TARGET_PARTIAL_REG_STALL)
   && (mode != DImode
       || x86_64_immediate_operand (GEN_INT (cf), VOIDmode)))
 {
   rtx tmp;
   int nops;

   out = emit_store_flag (out, code, ix86_compare_op0,
     ix86_compare_op1, VOIDmode, 0, 1);

   nops = 0;


   if (diff == 1)
     tmp = copy_rtx (out);
   else
     {
       rtx out1;
       out1 = copy_rtx (out);
       tmp = gen_rtx_MULT (mode, out1, GEN_INT (diff & ~1));
       nops++;
       if (diff & 1)
  {
    tmp = gen_rtx_PLUS (mode, tmp, out1);
    nops++;
  }
     }
   if (cf != 0)
     {
       tmp = gen_rtx_PLUS (mode, tmp, GEN_INT (cf));
       nops++;
     }
   if (!rtx_equal_p (tmp, out))
     {
       if (nops == 1)
  out = force_operand (tmp, copy_rtx (out));
       else
  emit_insn (gen_rtx_SET (VOIDmode, copy_rtx (out), copy_rtx (tmp)));
     }
   if (!rtx_equal_p (out, operands[0]))
     emit_move_insn (operands[0], copy_rtx (out));

   return 1;
 }
      if ((!TARGET_CMOVE || (mode == QImode && TARGET_PARTIAL_REG_STALL))
   && BRANCH_COST >= 2)
 {
   if (cf == 0)
     {
       cf = ct;
       ct = 0;
       if (FLOAT_MODE_P (GET_MODE (ix86_compare_op0)))




  code = reverse_condition_maybe_unordered (code);
       else
  {
    code = reverse_condition (code);
    if (compare_code != UNKNOWN)
      compare_code = reverse_condition (compare_code);
  }
     }

   if (compare_code != UNKNOWN)
     {
       if (compare_code == GE || !cf)
  {
    code = reverse_condition (code);
    compare_code = LT;
  }
       else
  {
    HOST_WIDE_INT tmp = cf;
    cf = ct;
    ct = tmp;
  }

       out = emit_store_flag (out, code, ix86_compare_op0,
         ix86_compare_op1, VOIDmode, 0, -1);
     }
   else
     {
       out = emit_store_flag (out, code, ix86_compare_op0,
         ix86_compare_op1, VOIDmode, 0, 1);

       out = expand_simple_binop (mode, PLUS, copy_rtx (out), constm1_rtx,
      copy_rtx (out), 1, OPTAB_DIRECT);
     }

   out = expand_simple_binop (mode, AND, copy_rtx (out),
         gen_int_mode (cf - ct, mode),
         copy_rtx (out), 1, OPTAB_DIRECT);
   if (ct)
     out = expand_simple_binop (mode, PLUS, copy_rtx (out), GEN_INT (ct),
           copy_rtx (out), 1, OPTAB_DIRECT);
   if (!rtx_equal_p (out, operands[0]))
     emit_move_insn (operands[0], copy_rtx (out));

   return 1;
 }
    }

  if (!TARGET_CMOVE || (mode == QImode && TARGET_PARTIAL_REG_STALL))
    {


      optab op;
      rtx var, orig_out, out, tmp;

      if (BRANCH_COST <= 2)
 return 0;




      if (GET_CODE (operands[2]) == CONST_INT)
 {
   var = operands[3];
   if (INTVAL (operands[2]) == 0 && operands[3] != constm1_rtx)
     operands[3] = constm1_rtx, op = and_optab;
   else if (INTVAL (operands[2]) == -1 && operands[3] != const0_rtx)
     operands[3] = const0_rtx, op = ior_optab;
   else
     return 0;
 }
      else if (GET_CODE (operands[3]) == CONST_INT)
 {
   var = operands[2];
   if (INTVAL (operands[3]) == 0 && operands[2] != constm1_rtx)
     operands[2] = constm1_rtx, op = and_optab;
   else if (INTVAL (operands[3]) == -1 && operands[3] != const0_rtx)
     operands[2] = const0_rtx, op = ior_optab;
   else
     return 0;
 }
      else
        return 0;

      orig_out = operands[0];
      tmp = gen_reg_rtx (mode);
      operands[0] = tmp;


      if (ix86_expand_int_movcc (operands) == 0)
        return 0;


      out = expand_binop (mode, op, var, tmp, orig_out, 0,
     OPTAB_WIDEN);
      if (!rtx_equal_p (out, orig_out))
 emit_move_insn (copy_rtx (orig_out), copy_rtx (out));

      return 1;
    }
  if (! nonimmediate_operand (operands[2], mode))
    operands[2] = force_reg (mode, operands[2]);
  if (! nonimmediate_operand (operands[3], mode))
    operands[3] = force_reg (mode, operands[3]);

  if (bypass_test && reg_overlap_mentioned_p (operands[0], operands[3]))
    {
      rtx tmp = gen_reg_rtx (mode);
      emit_move_insn (tmp, operands[3]);
      operands[3] = tmp;
    }
  if (second_test && reg_overlap_mentioned_p (operands[0], operands[2]))
    {
      rtx tmp = gen_reg_rtx (mode);
      emit_move_insn (tmp, operands[2]);
      operands[2] = tmp;
    }

  if (! register_operand (operands[2], VOIDmode)
      && (mode == QImode
          || ! register_operand (operands[3], VOIDmode)))
    operands[2] = force_reg (mode, operands[2]);

  if (mode == QImode
      && ! register_operand (operands[3], VOIDmode))
    operands[3] = force_reg (mode, operands[3]);

  emit_insn (compare_seq);
  emit_insn (gen_rtx_SET (VOIDmode, operands[0],
     gen_rtx_IF_THEN_ELSE (mode,
      compare_op, operands[2],
      operands[3])));
  if (bypass_test)
    emit_insn (gen_rtx_SET (VOIDmode, copy_rtx (operands[0]),
       gen_rtx_IF_THEN_ELSE (mode,
      bypass_test,
      copy_rtx (operands[3]),
      copy_rtx (operands[0]))));
  if (second_test)
    emit_insn (gen_rtx_SET (VOIDmode, copy_rtx (operands[0]),
       gen_rtx_IF_THEN_ELSE (mode,
      second_test,
      copy_rtx (operands[2]),
      copy_rtx (operands[0]))));

  return 1;
}
