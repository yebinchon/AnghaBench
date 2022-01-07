
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;






 int DImode ;
 int GEN_INT (int) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int REGNO (scalar_t__) ;
 scalar_t__ TImode ;
 int VOIDmode ;
 int data_segment_operand (scalar_t__,scalar_t__) ;
 int emit_insn (int ) ;
 int gcc_assert (scalar_t__) ;
 int gcc_unreachable () ;
 int gen_embmedany_brsum (scalar_t__,scalar_t__) ;
 int gen_embmedany_losum (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_embmedany_sethi (scalar_t__,scalar_t__) ;
 int gen_embmedany_texthi (scalar_t__,scalar_t__) ;
 int gen_embmedany_textlo (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_embmedany_textuhi (scalar_t__,scalar_t__) ;
 int gen_embmedany_textulo (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int gen_rtx_ASHIFT (int ,scalar_t__,int ) ;
 int gen_rtx_HIGH (int ,scalar_t__) ;
 int gen_rtx_LO_SUM (int ,scalar_t__,scalar_t__) ;
 int gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_REG (int ,int ) ;
 int gen_rtx_SET (int ,scalar_t__,int ) ;
 int gen_seth44 (scalar_t__,scalar_t__) ;
 int gen_sethh (scalar_t__,scalar_t__) ;
 int gen_sethm (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_setl44 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_setlm (scalar_t__,scalar_t__) ;
 int gen_setlo (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_setm44 (scalar_t__,scalar_t__,scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int sparc_cmodel ;

void
sparc_emit_set_symbolic_const64 (rtx op0, rtx op1, rtx temp)
{
  rtx temp1, temp2, temp3, temp4, temp5;
  rtx ti_temp = 0;

  if (temp && GET_MODE (temp) == TImode)
    {
      ti_temp = temp;
      temp = gen_rtx_REG (DImode, REGNO (temp));
    }


  switch (sparc_cmodel)
    {
    case 129:
      if (temp)
 temp1 = temp;
      else
 temp1 = gen_reg_rtx (DImode);

      emit_insn (gen_rtx_SET (VOIDmode, temp1, gen_rtx_HIGH (DImode, op1)));
      emit_insn (gen_rtx_SET (VOIDmode, op0, gen_rtx_LO_SUM (DImode, temp1, op1)));
      break;

    case 128:
      if (temp)
 {
   temp1 = op0;
   temp2 = op0;
   temp3 = temp;
 }
      else
 {
   temp1 = gen_reg_rtx (DImode);
   temp2 = gen_reg_rtx (DImode);
   temp3 = gen_reg_rtx (DImode);
 }

      emit_insn (gen_seth44 (temp1, op1));
      emit_insn (gen_setm44 (temp2, temp1, op1));
      emit_insn (gen_rtx_SET (VOIDmode, temp3,
         gen_rtx_ASHIFT (DImode, temp2, GEN_INT (12))));
      emit_insn (gen_setl44 (op0, temp3, op1));
      break;

    case 130:
      if (temp)
 {



   if (rtx_equal_p (temp, op0))
     {
       gcc_assert (ti_temp);
       temp = gen_rtx_REG (DImode, REGNO (temp) + 1);
     }
   temp1 = op0;
   temp2 = temp;
   temp3 = op0;
   temp4 = op0;
   temp5 = op0;
 }
      else
 {
   temp1 = gen_reg_rtx (DImode);
   temp2 = gen_reg_rtx (DImode);
   temp3 = gen_reg_rtx (DImode);
   temp4 = gen_reg_rtx (DImode);
   temp5 = gen_reg_rtx (DImode);
 }

      emit_insn (gen_sethh (temp1, op1));
      emit_insn (gen_setlm (temp2, op1));
      emit_insn (gen_sethm (temp3, temp1, op1));
      emit_insn (gen_rtx_SET (VOIDmode, temp4,
         gen_rtx_ASHIFT (DImode, temp3, GEN_INT (32))));
      emit_insn (gen_rtx_SET (VOIDmode, temp5,
         gen_rtx_PLUS (DImode, temp4, temp2)));
      emit_insn (gen_setlo (op0, temp5, op1));
      break;

    case 131:
      if (data_segment_operand (op1, GET_MODE (op1)))
 {
   if (temp)
     {
       temp1 = temp;
       temp2 = op0;
     }
   else
     {
       temp1 = gen_reg_rtx (DImode);
       temp2 = gen_reg_rtx (DImode);
     }

   emit_insn (gen_embmedany_sethi (temp1, op1));
   emit_insn (gen_embmedany_brsum (temp2, temp1));
   emit_insn (gen_embmedany_losum (op0, temp2, op1));
 }







      else
 {
   if (temp)
     {



       if (rtx_equal_p (temp, op0))
  {
    gcc_assert (ti_temp);
    temp = gen_rtx_REG (DImode, REGNO (temp) + 1);
  }
       temp1 = op0;
       temp2 = temp;
       temp3 = op0;
       temp4 = op0;
       temp5 = op0;
     }
   else
     {
       temp1 = gen_reg_rtx (DImode);
       temp2 = gen_reg_rtx (DImode);
       temp3 = gen_reg_rtx (DImode);
       temp4 = gen_reg_rtx (DImode);
       temp5 = gen_reg_rtx (DImode);
     }

   emit_insn (gen_embmedany_textuhi (temp1, op1));
   emit_insn (gen_embmedany_texthi (temp2, op1));
   emit_insn (gen_embmedany_textulo (temp3, temp1, op1));
   emit_insn (gen_rtx_SET (VOIDmode, temp4,
      gen_rtx_ASHIFT (DImode, temp3, GEN_INT (32))));
   emit_insn (gen_rtx_SET (VOIDmode, temp5,
      gen_rtx_PLUS (DImode, temp4, temp2)));
   emit_insn (gen_embmedany_textlo (op0, temp5, op1));
 }
      break;

    default:
      gcc_unreachable ();
    }
}
