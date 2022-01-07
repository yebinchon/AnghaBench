
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_MODE (int ) ;
 int XOR ;
 int const1_rtx ;
 int force_reg (int ,int ) ;
 int gen_reg_rtx (int ) ;
 scalar_t__ mips_canonicalize_comparison (int*,int *,int ) ;
 int mips_emit_binary (int,int ,int ,int ) ;
 scalar_t__ mips_relational_operand_ok_p (int,int ) ;
 int reverse_condition (int) ;

__attribute__((used)) static void
mips_emit_int_relational (enum rtx_code code, bool *invert_ptr,
     rtx target, rtx cmp0, rtx cmp1)
{





  if (mips_relational_operand_ok_p (code, cmp1))
    mips_emit_binary (code, target, cmp0, cmp1);
  else if (mips_canonicalize_comparison (&code, &cmp1, GET_MODE (target)))
    mips_emit_binary (code, target, cmp0, cmp1);
  else
    {
      enum rtx_code inv_code = reverse_condition (code);
      if (!mips_relational_operand_ok_p (inv_code, cmp1))
 {
   cmp1 = force_reg (GET_MODE (cmp0), cmp1);
   mips_emit_int_relational (code, invert_ptr, target, cmp0, cmp1);
 }
      else if (invert_ptr == 0)
 {
   rtx inv_target = gen_reg_rtx (GET_MODE (target));
   mips_emit_binary (inv_code, inv_target, cmp0, cmp1);
   mips_emit_binary (XOR, target, inv_target, const1_rtx);
 }
      else
 {
   *invert_ptr = !*invert_ptr;
   mips_emit_binary (inv_code, target, cmp0, cmp1);
 }
    }
}
