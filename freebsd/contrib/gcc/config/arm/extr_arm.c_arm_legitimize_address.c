
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ ARM_BASE_REGISTER_RTX_P (scalar_t__) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 int DFmode ;
 int DImode ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ MINUS ;
 int NULL_RTX ;
 scalar_t__ PLUS ;
 int SImode ;
 scalar_t__ TARGET_SOFT_FLOAT ;
 scalar_t__ TARGET_VFP ;
 int TImode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ arm_tls_symbol_p (scalar_t__) ;
 int bit_count (int) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ flag_pic ;
 scalar_t__ force_operand (scalar_t__,int ) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ gen_rtx_MINUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ legitimize_pic_address (scalar_t__,int,int ) ;
 scalar_t__ legitimize_tls_address (scalar_t__,int ) ;
 scalar_t__ optimize ;
 scalar_t__ plus_constant (scalar_t__,int) ;
 int symbol_mentioned_p (scalar_t__) ;

rtx
arm_legitimize_address (rtx x, rtx orig_x, enum machine_mode mode)
{
  if (arm_tls_symbol_p (x))
    return legitimize_tls_address (x, NULL_RTX);

  if (GET_CODE (x) == PLUS)
    {
      rtx xop0 = XEXP (x, 0);
      rtx xop1 = XEXP (x, 1);

      if (CONSTANT_P (xop0) && !symbol_mentioned_p (xop0))
 xop0 = force_reg (SImode, xop0);

      if (CONSTANT_P (xop1) && !symbol_mentioned_p (xop1))
 xop1 = force_reg (SImode, xop1);

      if (ARM_BASE_REGISTER_RTX_P (xop0)
   && GET_CODE (xop1) == CONST_INT)
 {
   HOST_WIDE_INT n, low_n;
   rtx base_reg, val;
   n = INTVAL (xop1);



   if (mode == DImode
       || ((TARGET_SOFT_FLOAT || TARGET_VFP) && mode == DFmode))
     {
       low_n = n & 0x0f;
       n &= ~0x0f;
       if (low_n > 4)
  {
    n += 16;
    low_n -= 16;
  }
     }
   else
     {
       low_n = ((mode) == TImode ? 0
         : n >= 0 ? (n & 0xfff) : -((-n) & 0xfff));
       n -= low_n;
     }

   base_reg = gen_reg_rtx (SImode);
   val = force_operand (plus_constant (xop0, n), NULL_RTX);
   emit_move_insn (base_reg, val);
   x = plus_constant (base_reg, low_n);
 }
      else if (xop0 != XEXP (x, 0) || xop1 != XEXP (x, 1))
 x = gen_rtx_PLUS (SImode, xop0, xop1);
    }



  else if (GET_CODE (x) == MINUS)
    {
      rtx xop0 = XEXP (x, 0);
      rtx xop1 = XEXP (x, 1);

      if (CONSTANT_P (xop0))
 xop0 = force_reg (SImode, xop0);

      if (CONSTANT_P (xop1) && ! symbol_mentioned_p (xop1))
 xop1 = force_reg (SImode, xop1);

      if (xop0 != XEXP (x, 0) || xop1 != XEXP (x, 1))
 x = gen_rtx_MINUS (SImode, xop0, xop1);
    }





  else if (GET_CODE (x) == CONST_INT && optimize > 0)
    {
      unsigned int bits;
      HOST_WIDE_INT mask, base, index;
      rtx base_reg;




      bits = (mode == SImode) ? 12 : 8;
      mask = (1 << bits) - 1;
      base = INTVAL (x) & ~mask;
      index = INTVAL (x) & mask;
      if (bit_count (base & 0xffffffff) > (32 - bits)/2)
        {


   base |= mask;
   index -= mask;
 }
      base_reg = force_reg (SImode, GEN_INT (base));
      x = plus_constant (base_reg, index);
    }

  if (flag_pic)
    {


      rtx new_x = legitimize_pic_address (orig_x, mode, NULL_RTX);

      if (new_x != orig_x)
 x = new_x;
    }

  return x;
}
