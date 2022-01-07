
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ rtx ;
struct TYPE_3__ {int (* type_for_mode ) (scalar_t__,int) ;int (* signed_or_unsigned_type ) (int,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; int reduce_bit_field_operations; } ;


 scalar_t__ BLKmode ;
 int BLOCK_OP_CALL_PARM ;
 int BLOCK_OP_NORMAL ;
 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ ERROR_MARK ;
 int EXPAND_NORMAL ;
 int EXPAND_STACK_PARM ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_PRECISION (scalar_t__) ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ INTVAL (scalar_t__) ;
 int LT ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MEM_VOLATILE_P (scalar_t__) ;
 int MIN_EXPR ;
 int NO_DEFER_POP ;
 scalar_t__ NULL_RTX ;
 int OK_DEFER_POP ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ PARALLEL ;
 scalar_t__ Pmode ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ STRING_CST ;
 scalar_t__ SUBREG ;
 int SUBREG_PROMOTED_UNSIGNED_P (scalar_t__) ;
 scalar_t__ SUBREG_PROMOTED_VAR_P (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_STRING_LENGTH (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 scalar_t__ VOIDmode ;
 scalar_t__ adjust_address (scalar_t__,scalar_t__,scalar_t__) ;
 int clear_storage (scalar_t__,scalar_t__,int ) ;
 scalar_t__ const0_rtx ;
 scalar_t__ convert_modes (scalar_t__,scalar_t__,scalar_t__,int) ;
 int convert_move (scalar_t__,scalar_t__,int) ;
 scalar_t__ convert_to_mode (scalar_t__,scalar_t__,int) ;
 int do_pending_stack_adjust () ;
 int emit_barrier () ;
 int emit_block_move (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int emit_group_load (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ expand_expr (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ expand_expr_real (scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ expr_size (scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 int gen_jump (scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 int highest_pow2_factor (scalar_t__) ;
 int int_size_in_bytes (scalar_t__) ;
 int jumpifnot (scalar_t__,scalar_t__) ;
 TYPE_2__ lang_hooks ;
 int make_tree (scalar_t__,scalar_t__) ;
 scalar_t__ offset_address (scalar_t__,scalar_t__,int ) ;
 scalar_t__ plus_constant (scalar_t__,scalar_t__) ;
 scalar_t__ ptr_mode ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ side_effects_p (scalar_t__) ;
 scalar_t__ size_binop (int ,int ,int ) ;
 int size_int (scalar_t__) ;
 scalar_t__ sizetype ;
 int stub1 (int,scalar_t__) ;
 int stub2 (scalar_t__,int) ;
 int sub_optab ;

rtx
store_expr (tree exp, rtx target, int call_param_p)
{
  rtx temp;
  rtx alt_rtl = NULL_RTX;
  int dont_return_target = 0;

  if (VOID_TYPE_P (TREE_TYPE (exp)))
    {



      gcc_assert (!call_param_p);
      expand_expr (exp, const0_rtx, VOIDmode, 0);
      return NULL_RTX;
    }
  if (TREE_CODE (exp) == COMPOUND_EXPR)
    {


      expand_expr (TREE_OPERAND (exp, 0), const0_rtx, VOIDmode,
     call_param_p ? EXPAND_STACK_PARM : EXPAND_NORMAL);
      return store_expr (TREE_OPERAND (exp, 1), target, call_param_p);
    }
  else if (TREE_CODE (exp) == COND_EXPR && GET_MODE (target) == BLKmode)
    {





      rtx lab1 = gen_label_rtx (), lab2 = gen_label_rtx ();

      do_pending_stack_adjust ();
      NO_DEFER_POP;
      jumpifnot (TREE_OPERAND (exp, 0), lab1);
      store_expr (TREE_OPERAND (exp, 1), target, call_param_p);
      emit_jump_insn (gen_jump (lab2));
      emit_barrier ();
      emit_label (lab1);
      store_expr (TREE_OPERAND (exp, 2), target, call_param_p);
      emit_label (lab2);
      OK_DEFER_POP;

      return NULL_RTX;
    }
  else if (GET_CODE (target) == SUBREG && SUBREG_PROMOTED_VAR_P (target))




    {
      rtx inner_target = 0;







      if (INTEGRAL_TYPE_P (TREE_TYPE (exp))
   && TREE_TYPE (TREE_TYPE (exp)) == 0
   && (!lang_hooks.reduce_bit_field_operations
       || (GET_MODE_PRECISION (GET_MODE (target))
    == TYPE_PRECISION (TREE_TYPE (exp)))))
 {
   if (TYPE_UNSIGNED (TREE_TYPE (exp))
       != SUBREG_PROMOTED_UNSIGNED_P (target))
     exp = fold_convert
       (lang_hooks.types.signed_or_unsigned_type
        (SUBREG_PROMOTED_UNSIGNED_P (target), TREE_TYPE (exp)), exp);

   exp = fold_convert (lang_hooks.types.type_for_mode
    (GET_MODE (SUBREG_REG (target)),
     SUBREG_PROMOTED_UNSIGNED_P (target)),
         exp);

   inner_target = SUBREG_REG (target);
 }

      temp = expand_expr (exp, inner_target, VOIDmode,
     call_param_p ? EXPAND_STACK_PARM : EXPAND_NORMAL);



      if (CONSTANT_P (temp) && GET_MODE (temp) == VOIDmode)
 {
   temp = convert_modes (GET_MODE (target), TYPE_MODE (TREE_TYPE (exp)),
    temp, SUBREG_PROMOTED_UNSIGNED_P (target));
   temp = convert_modes (GET_MODE (SUBREG_REG (target)),
           GET_MODE (target), temp,
           SUBREG_PROMOTED_UNSIGNED_P (target));
 }

      convert_move (SUBREG_REG (target), temp,
      SUBREG_PROMOTED_UNSIGNED_P (target));

      return NULL_RTX;
    }
  else
    {
      temp = expand_expr_real (exp, target, GET_MODE (target),
          (call_param_p
    ? EXPAND_STACK_PARM : EXPAND_NORMAL),
          &alt_rtl);







      if (!(target && REG_P (target)
     && REGNO (target) < FIRST_PSEUDO_REGISTER)
   && !(MEM_P (target) && MEM_VOLATILE_P (target))
   && ! rtx_equal_p (temp, target)
   && CONSTANT_P (temp))
 dont_return_target = 1;
    }





  if (CONSTANT_P (temp) && GET_MODE (temp) == VOIDmode
      && TREE_CODE (exp) != ERROR_MARK
      && GET_MODE (target) != TYPE_MODE (TREE_TYPE (exp)))
    temp = convert_modes (GET_MODE (target), TYPE_MODE (TREE_TYPE (exp)),
     temp, TYPE_UNSIGNED (TREE_TYPE (exp)));
  if ((! rtx_equal_p (temp, target)
       || (temp != target && (side_effects_p (temp)
         || side_effects_p (target))))
      && TREE_CODE (exp) != ERROR_MARK



      && !(alt_rtl && rtx_equal_p (alt_rtl, target))




      && expr_size (exp) != const0_rtx)
    {
      if (GET_MODE (temp) != GET_MODE (target)
   && GET_MODE (temp) != VOIDmode)
 {
   int unsignedp = TYPE_UNSIGNED (TREE_TYPE (exp));
   if (dont_return_target)
     {



       temp = convert_to_mode (GET_MODE (target), temp, unsignedp);
       emit_move_insn (target, temp);
     }
   else if (GET_MODE (target) == BLKmode)
     emit_block_move (target, temp, expr_size (exp),
        (call_param_p
         ? BLOCK_OP_CALL_PARM
         : BLOCK_OP_NORMAL));
   else
     convert_move (target, temp, unsignedp);
 }

      else if (GET_MODE (temp) == BLKmode && TREE_CODE (exp) == STRING_CST)
 {




   rtx size = expr_size (exp);

   if (GET_CODE (size) == CONST_INT
       && INTVAL (size) < TREE_STRING_LENGTH (exp))
     emit_block_move (target, temp, size,
        (call_param_p
         ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
   else
     {

       tree copy_size
  = size_binop (MIN_EXPR,
         make_tree (sizetype, size),
         size_int (TREE_STRING_LENGTH (exp)));
       rtx copy_size_rtx
  = expand_expr (copy_size, NULL_RTX, VOIDmode,
          (call_param_p
    ? EXPAND_STACK_PARM : EXPAND_NORMAL));
       rtx label = 0;


       copy_size_rtx = convert_to_mode (ptr_mode, copy_size_rtx,
            TYPE_UNSIGNED (sizetype));
       emit_block_move (target, temp, copy_size_rtx,
          (call_param_p
    ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));



       if (GET_CODE (copy_size_rtx) == CONST_INT)
  {
    size = plus_constant (size, -INTVAL (copy_size_rtx));
    target = adjust_address (target, BLKmode,
        INTVAL (copy_size_rtx));
  }
       else
  {
    size = expand_binop (TYPE_MODE (sizetype), sub_optab, size,
           copy_size_rtx, NULL_RTX, 0,
           OPTAB_LIB_WIDEN);







    target = offset_address (target, copy_size_rtx,
        highest_pow2_factor (copy_size));
    label = gen_label_rtx ();
    emit_cmp_and_jump_insns (size, const0_rtx, LT, NULL_RTX,
        GET_MODE (size), 0, label);
  }

       if (size != const0_rtx)
  clear_storage (target, size, BLOCK_OP_NORMAL);

       if (label)
  emit_label (label);
     }
 }


      else if (GET_CODE (target) == PARALLEL)
 emit_group_load (target, temp, TREE_TYPE (exp),
    int_size_in_bytes (TREE_TYPE (exp)));
      else if (GET_MODE (temp) == BLKmode)
 emit_block_move (target, temp, expr_size (exp),
    (call_param_p
     ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
      else
 {
   temp = force_operand (temp, target);
   if (temp != target)
     emit_move_insn (target, temp);
 }
    }

  return NULL_RTX;
}
