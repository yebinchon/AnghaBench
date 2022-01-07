
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST0_RTX (int) ;


 int GEN_INT (int) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int force_reg (int const,int ) ;
 int gcc_unreachable () ;
 int gen_andv2si3 (int ,int ,int ) ;
 int gen_reg_rtx (int const) ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_CONST_VECTOR (int const,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_US_MINUS (int,int ,int ) ;
 int gen_rtx_fmt_ee (int,int,int ,int ) ;
 int gen_subv2si3 (int ,int ,int ) ;
 int gen_xorv2si3 (int ,int ,int ) ;
 int reverse_condition (int) ;
 int swap_condition (int) ;

__attribute__((used)) static bool
ia64_expand_vecint_compare (enum rtx_code code, enum machine_mode mode,
       rtx dest, rtx op0, rtx op1)
{
  bool negate = 0;
  rtx x;


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
      x = op0, op0 = op1, op1 = x;
      break;

    default:
      gcc_unreachable ();
    }



  if (code == 136)
    {
      switch (mode)
 {
 case 130:
   {
     rtx t1, t2, mask;


     t1 = gen_reg_rtx (130);
     emit_insn (gen_subv2si3 (t1, op0, op1));


     mask = GEN_INT (-0x80000000);
     mask = gen_rtx_CONST_VECTOR (130, gen_rtvec (2, mask, mask));
     mask = force_reg (130, mask);
     t2 = gen_reg_rtx (130);
     emit_insn (gen_andv2si3 (t2, op0, mask));



     x = gen_reg_rtx (130);
     emit_insn (gen_xorv2si3 (x, t1, t2));

     code = 137;
     op0 = x;
     op1 = CONST0_RTX (mode);
   }
   break;

 case 128:
 case 129:

   x = gen_reg_rtx (mode);
   emit_insn (gen_rtx_SET (VOIDmode, x,
      gen_rtx_US_MINUS (mode, op0, op1)));

   code = 140;
   op0 = x;
   op1 = CONST0_RTX (mode);
   negate = !negate;
   break;

 default:
   gcc_unreachable ();
 }
    }

  x = gen_rtx_fmt_ee (code, mode, op0, op1);
  emit_insn (gen_rtx_SET (VOIDmode, dest, x));

  return negate;
}
