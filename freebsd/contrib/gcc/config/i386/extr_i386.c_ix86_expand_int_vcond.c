
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST0_RTX (int) ;


 int GEN_INT (int) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int force_reg (int,int ) ;
 int gcc_unreachable () ;
 int gen_andv4si3 (int ,int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtvec (int,int ,int ,int ,int ) ;
 int gen_rtx_CONST_VECTOR (int,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_US_MINUS (int,int ,int ) ;
 int gen_subv4si3 (int ,int ,int ) ;
 int gen_xorv4si3 (int ,int ,int ) ;
 int ix86_expand_sse_cmp (int ,int,int ,int ,int ,int ) ;
 int ix86_expand_sse_movcc (int ,int ,int ,int ) ;
 int reverse_condition (int) ;
 int swap_condition (int) ;

bool
ix86_expand_int_vcond (rtx operands[])
{
  enum machine_mode mode = GET_MODE (operands[0]);
  enum rtx_code code = GET_CODE (operands[3]);
  bool negate = 0;
  rtx x, cop0, cop1;

  cop0 = operands[4];
  cop1 = operands[5];


  switch (code)
    {
    case 140:
    case 137:
    case 136:
      break;

    case 131:
    case 135:
    case 134:
      code = reverse_condition (code);
      negate = 1;
      break;

    case 139:
    case 138:
      code = reverse_condition (code);
      negate = 1;


    case 133:
    case 132:
      code = swap_condition (code);
      x = cop0, cop0 = cop1, cop1 = x;
      break;

    default:
      gcc_unreachable ();
    }



  if (code == 136)
    {
      cop0 = force_reg (mode, cop0);

      switch (mode)
 {
 case 129:
   {
     rtx t1, t2, mask;


     t1 = gen_reg_rtx (mode);
     emit_insn (gen_subv4si3 (t1, cop0, cop1));


     mask = GEN_INT (-0x80000000);
     mask = gen_rtx_CONST_VECTOR (mode,
   gen_rtvec (4, mask, mask, mask, mask));
     mask = force_reg (mode, mask);
     t2 = gen_reg_rtx (mode);
     emit_insn (gen_andv4si3 (t2, cop0, mask));



     x = gen_reg_rtx (mode);
     emit_insn (gen_xorv4si3 (x, t1, t2));

     code = 137;
   }
   break;

 case 130:
 case 128:

   x = gen_reg_rtx (mode);
   emit_insn (gen_rtx_SET (VOIDmode, x,
      gen_rtx_US_MINUS (mode, cop0, cop1)));

   code = 140;
   negate = !negate;
   break;

 default:
   gcc_unreachable ();
 }

      cop0 = x;
      cop1 = CONST0_RTX (mode);
    }

  x = ix86_expand_sse_cmp (operands[0], code, cop0, cop1,
      operands[1+negate], operands[2-negate]);

  ix86_expand_sse_movcc (operands[0], x, operands[1+negate],
    operands[2-negate]);
  return 1;
}
