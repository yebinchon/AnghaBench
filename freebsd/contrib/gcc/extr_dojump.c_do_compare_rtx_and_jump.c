
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;

 int FLOAT_MODE_P (int) ;

 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int) ;







 scalar_t__ MODE_INT ;

 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int can_compare_p (int,int,int ) ;
 int ccp_jump ;
 scalar_t__ const0_rtx ;
 int do_jump_by_parts_equality_rtx (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int do_jump_by_parts_greater_rtx (int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int do_pending_stack_adjust () ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int,scalar_t__,int,int,scalar_t__) ;
 int emit_jump (scalar_t__) ;
 int emit_label (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ gen_label_rtx () ;
 int reverse_condition (int) ;
 scalar_t__ simplify_relational_operation (int,int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ swap_commutative_operands_p (scalar_t__,scalar_t__) ;
 int swap_condition (int) ;
 int unsigned_condition (int) ;

void
do_compare_rtx_and_jump (rtx op0, rtx op1, enum rtx_code code, int unsignedp,
    enum machine_mode mode, rtx size, rtx if_false_label,
    rtx if_true_label)
{
  rtx tem;
  int dummy_true_label = 0;



  if (! if_true_label && ! FLOAT_MODE_P (mode))
    {
      if_true_label = if_false_label;
      if_false_label = 0;
      code = reverse_condition (code);
    }




  if (swap_commutative_operands_p (op0, op1))
    {
      tem = op0;
      op0 = op1;
      op1 = tem;
      code = swap_condition (code);
    }

  do_pending_stack_adjust ();

  code = unsignedp ? unsigned_condition (code) : code;
  if (0 != (tem = simplify_relational_operation (code, mode, VOIDmode,
       op0, op1)))
    {
      if (CONSTANT_P (tem))
 {
   rtx label = (tem == const0_rtx || tem == CONST0_RTX (mode))
        ? if_false_label : if_true_label;
   if (label)
     emit_jump (label);
   return;
 }

      code = GET_CODE (tem);
      mode = GET_MODE (tem);
      op0 = XEXP (tem, 0);
      op1 = XEXP (tem, 1);
      unsignedp = (code == 133 || code == 129 || code == 135 || code == 131);
    }


  if (! if_true_label)
    {
      dummy_true_label = 1;
      if_true_label = gen_label_rtx ();
    }

  if (GET_MODE_CLASS (mode) == MODE_INT
      && ! can_compare_p (code, mode, ccp_jump))
    {
      switch (code)
 {
 case 129:
   do_jump_by_parts_greater_rtx (mode, 1, op1, op0,
     if_false_label, if_true_label);
   break;

 case 131:
   do_jump_by_parts_greater_rtx (mode, 1, op0, op1,
     if_true_label, if_false_label);
   break;

 case 133:
   do_jump_by_parts_greater_rtx (mode, 1, op0, op1,
     if_false_label, if_true_label);
   break;

 case 135:
   do_jump_by_parts_greater_rtx (mode, 1, op1, op0,
     if_true_label, if_false_label);
   break;

 case 130:
   do_jump_by_parts_greater_rtx (mode, 0, op1, op0,
     if_false_label, if_true_label);
   break;

 case 132:
   do_jump_by_parts_greater_rtx (mode, 0, op0, op1,
     if_true_label, if_false_label);
   break;

 case 134:
   do_jump_by_parts_greater_rtx (mode, 0, op0, op1,
     if_false_label, if_true_label);
   break;

 case 136:
   do_jump_by_parts_greater_rtx (mode, 0, op1, op0,
     if_true_label, if_false_label);
   break;

 case 137:
   do_jump_by_parts_equality_rtx (mode, op0, op1, if_false_label,
      if_true_label);
   break;

 case 128:
   do_jump_by_parts_equality_rtx (mode, op0, op1, if_true_label,
      if_false_label);
   break;

 default:
   gcc_unreachable ();
 }
    }
  else
    emit_cmp_and_jump_insns (op0, op1, code, size, mode, unsignedp,
        if_true_label);

  if (if_false_label)
    emit_jump (if_false_label);
  if (dummy_true_label)
    emit_label (if_true_label);
}
