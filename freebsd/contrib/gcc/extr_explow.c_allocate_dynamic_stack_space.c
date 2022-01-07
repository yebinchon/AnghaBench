
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef int (* insn_operand_predicate_fn ) (scalar_t__,int) ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int preferred_stack_boundary; scalar_t__ nonlocal_goto_save_area; } ;
struct TYPE_5__ {TYPE_1__* operand; } ;
struct TYPE_4__ {int mode; int (* predicate ) (scalar_t__,int) ;} ;
typedef int HOST_WIDE_INT ;


 int BIGGEST_ALIGNMENT ;
 int BITS_PER_UNIT ;
 scalar_t__ CODE_FOR_allocate_stack ;
 scalar_t__ CONST_INT ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int GEU ;
 scalar_t__ HAVE_allocate_stack ;
 scalar_t__ HAVE_trap ;
 int INTVAL (scalar_t__) ;
 scalar_t__ MUST_ALIGN ;
 int NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int OPTAB_WIDEN ;
 int PREFERRED_STACK_BOUNDARY ;
 scalar_t__ Pmode ;
 scalar_t__ REGNO (scalar_t__) ;
 int REG_P (scalar_t__) ;
 int STACK_CHECK_BUILTIN ;
 scalar_t__ STACK_CHECK_MAX_FRAME_SIZE ;
 scalar_t__ STACK_CHECK_PROTECT ;
 int STACK_SIZE_MODE ;
 int TRUNC_DIV_EXPR ;
 scalar_t__ VOIDmode ;
 int add_optab ;
 int anti_adjust_stack (scalar_t__) ;
 TYPE_3__* cfun ;
 scalar_t__ const0_rtx ;
 scalar_t__ convert_to_mode (int,scalar_t__,int) ;
 scalar_t__ copy_to_mode_reg (int,scalar_t__) ;
 int current_function_calls_alloca ;
 int current_function_calls_setjmp ;
 scalar_t__ current_function_limit_stack ;
 int do_pending_stack_adjust () ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int ,int ,scalar_t__,int,scalar_t__) ;
 int emit_insn (int ) ;
 int emit_label (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int error (char*) ;
 scalar_t__ expand_binop (scalar_t__,int ,scalar_t__,scalar_t__,int ,int,int ) ;
 scalar_t__ expand_divmod (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ expand_mult (scalar_t__,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ flag_stack_check ;
 scalar_t__ force_operand (int ,int ) ;
 int gcc_assert (int) ;
 int gen_allocate_stack (scalar_t__,scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (scalar_t__) ;
 int gen_trap () ;
 TYPE_2__* insn_data ;
 int mark_reg_pointer (scalar_t__,int) ;
 int plus_constant (scalar_t__,int) ;
 int probe_stack_range (scalar_t__,scalar_t__) ;
 scalar_t__ round_push (scalar_t__) ;
 scalar_t__ stack_limit_rtx ;
 int stack_pointer_delta ;
 scalar_t__ stack_pointer_rtx ;
 int stub1 (scalar_t__,int) ;
 int sub_optab ;
 int update_nonlocal_goto_save_area () ;
 scalar_t__ virtual_stack_dynamic_rtx ;

rtx
allocate_dynamic_stack_space (rtx size, rtx target, int known_align)
{



  if (size == const0_rtx)
    return virtual_stack_dynamic_rtx;


  current_function_calls_alloca = 1;


  if (GET_MODE (size) != VOIDmode && GET_MODE (size) != Pmode)
    size = convert_to_mode (Pmode, size, 1);




  cfun->preferred_stack_boundary = PREFERRED_STACK_BOUNDARY;
  if ((PREFERRED_STACK_BOUNDARY < BIGGEST_ALIGNMENT))
    size
      = force_operand (plus_constant (size,
          BIGGEST_ALIGNMENT / BITS_PER_UNIT - 1),
         NULL_RTX);
  if ((PREFERRED_STACK_BOUNDARY < BIGGEST_ALIGNMENT) || known_align % PREFERRED_STACK_BOUNDARY != 0)

    size = round_push (size);

  do_pending_stack_adjust ();



  gcc_assert (!(stack_pointer_delta
  % (PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT)));



  if (flag_stack_check && ! STACK_CHECK_BUILTIN)
    probe_stack_range (STACK_CHECK_MAX_FRAME_SIZE + STACK_CHECK_PROTECT, size);


  if (target == 0 || !REG_P (target)
      || REGNO (target) < FIRST_PSEUDO_REGISTER
      || GET_MODE (target) != Pmode)
    target = gen_reg_rtx (Pmode);

  mark_reg_pointer (target, known_align);
    {

      emit_move_insn (target, virtual_stack_dynamic_rtx);



      if (current_function_limit_stack)
 {
   rtx available;
   rtx space_available = gen_label_rtx ();





   available = expand_binop (Pmode, sub_optab,
        stack_limit_rtx, stack_pointer_rtx,
        NULL_RTX, 1, OPTAB_WIDEN);

   emit_cmp_and_jump_insns (available, size, GEU, NULL_RTX, Pmode, 1,
       space_available);





     error ("stack limits not supported on this target");
   emit_barrier ();
   emit_label (space_available);
 }

      anti_adjust_stack (size);




    }

  if ((PREFERRED_STACK_BOUNDARY < BIGGEST_ALIGNMENT))
    {



      target = expand_binop (Pmode, add_optab, target,
        GEN_INT (BIGGEST_ALIGNMENT / BITS_PER_UNIT - 1),
        NULL_RTX, 1, OPTAB_LIB_WIDEN);
      target = expand_divmod (0, TRUNC_DIV_EXPR, Pmode, target,
         GEN_INT (BIGGEST_ALIGNMENT / BITS_PER_UNIT),
         NULL_RTX, 1);
      target = expand_mult (Pmode, target,
       GEN_INT (BIGGEST_ALIGNMENT / BITS_PER_UNIT),
       NULL_RTX, 1);
    }


  if (cfun->nonlocal_goto_save_area != 0)
    update_nonlocal_goto_save_area ();

  return target;
}
