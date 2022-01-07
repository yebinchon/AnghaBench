
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ COMPARISON_P (scalar_t__) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GEU ;
 int GTU ;
 int LEU ;
 int LTU ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ cc0_rtx ;
 scalar_t__ const0_rtx ;
 int do_pending_stack_adjust () ;
 int emit_cmp_insn (scalar_t__,scalar_t__,int,scalar_t__,int,int) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_relational_operation (int,int ,int,scalar_t__,scalar_t__) ;
 scalar_t__ swap_commutative_operands_p (scalar_t__,scalar_t__) ;
 int swap_condition (int) ;
 int unsigned_condition (int) ;

rtx
compare_from_rtx (rtx op0, rtx op1, enum rtx_code code, int unsignedp,
    enum machine_mode mode, rtx size)
{
  rtx tem;




  if (swap_commutative_operands_p (op0, op1))
    {
      tem = op0;
      op0 = op1;
      op1 = tem;
      code = swap_condition (code);
    }

  do_pending_stack_adjust ();

  code = unsignedp ? unsigned_condition (code) : code;
  tem = simplify_relational_operation (code, VOIDmode, mode, op0, op1);
  if (tem)
    {
      if (CONSTANT_P (tem))
 return tem;

      if (COMPARISON_P (tem))
 {
   code = GET_CODE (tem);
   op0 = XEXP (tem, 0);
   op1 = XEXP (tem, 1);
   mode = GET_MODE (op0);
   unsignedp = (code == GTU || code == LTU
         || code == GEU || code == LEU);
 }
    }

  emit_cmp_insn (op0, op1, code, size, mode, unsignedp);




  return gen_rtx_fmt_ee (code, VOIDmode, op0, op1);

}
