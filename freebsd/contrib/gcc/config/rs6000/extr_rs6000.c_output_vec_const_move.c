
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST_VECTOR_ELT (int ,int) ;
 int EASY_VECTOR_15 (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ TARGET_ALTIVEC ;
 int TARGET_SPE ;



 scalar_t__ VEC_DUPLICATE ;
 int XEXP (int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int gen_easy_altivec_constant (int ) ;
 scalar_t__ zero_constant (int ,int) ;

const char *
output_vec_const_move (rtx *operands)
{
  int cst, cst2;
  enum machine_mode mode;
  rtx dest, vec;

  dest = operands[0];
  vec = operands[1];
  mode = GET_MODE (dest);

  if (TARGET_ALTIVEC)
    {
      rtx splat_vec;
      if (zero_constant (vec, mode))
 return "vxor %0,%0,%0";

      splat_vec = gen_easy_altivec_constant (vec);
      gcc_assert (GET_CODE (splat_vec) == VEC_DUPLICATE);
      operands[1] = XEXP (splat_vec, 0);
      if (!EASY_VECTOR_15 (INTVAL (operands[1])))
 return "#";

      switch (GET_MODE (splat_vec))
 {
 case 129:
   return "vspltisw %0,%1";

 case 128:
   return "vspltish %0,%1";

 case 130:
   return "vspltisb %0,%1";

 default:
   gcc_unreachable ();
 }
    }

  gcc_assert (TARGET_SPE);






  cst = INTVAL (CONST_VECTOR_ELT (vec, 0));
  cst2 = INTVAL (CONST_VECTOR_ELT (vec, 1));
  operands[1] = CONST_VECTOR_ELT (vec, 0);
  operands[2] = CONST_VECTOR_ELT (vec, 1);
  if (cst == cst2)
    return "li %0,%1\n\tevmergelo %0,%0,%0";
  else
    return "li %0,%1\n\tevmergelo %0,%0,%0\n\tli %0,%2";
}
