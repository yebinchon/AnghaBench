
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int decl; } ;
struct TYPE_4__ {scalar_t__ (* struct_value_rtx ) (int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int BLOCK_OP_NORMAL ;
 int CEIL (int,int) ;
 scalar_t__ CONST_INT ;
 int FIRST_PSEUDO_REGISTER ;
 int FUNCTION_MODE ;
 int GEN_CALL_VALUE (scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_ALIGNMENT (int) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ HAVE_call_value ;
 scalar_t__ HAVE_save_stack_nonlocal ;
 scalar_t__ HAVE_untyped_call ;
 int INTVAL (scalar_t__) ;
 int MINUS ;
 int NO_DEFER_POP ;
 int NULL_RTX ;
 int OK_DEFER_POP ;
 int OPTAB_LIB_WIDEN ;
 int PARM_BOUNDARY ;
 int Pmode ;
 scalar_t__ REG_P (scalar_t__) ;
 int SAVE_BLOCK ;
 int SAVE_NONLOCAL ;
 scalar_t__ SYMBOL_REF ;
 int TREE_TYPE (int ) ;
 int VOIDmode ;
 int XEXP (scalar_t__,int ) ;
 int add_function_usage_to (scalar_t__,scalar_t__) ;
 scalar_t__ adjust_address (scalar_t__,int,int) ;
 int allocate_dynamic_stack_space (scalar_t__,int ,int) ;
 int* apply_args_mode ;
 int apply_args_size () ;
 int* apply_result_mode ;
 int apply_result_size () ;
 scalar_t__ assign_stack_local (int,int ,int) ;
 TYPE_3__* cfun ;
 int const0_rtx ;
 scalar_t__ convert_memory_address (int,scalar_t__) ;
 scalar_t__ copy_addr_to_reg (int ) ;
 int do_pending_stack_adjust () ;
 int emit_block_move (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int emit_call_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int emit_stack_restore (int ,scalar_t__,int ) ;
 int emit_stack_save (int ,scalar_t__*,int ) ;
 scalar_t__ expand_simple_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ gen_rtx_MEM (int,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int,scalar_t__,int ) ;
 scalar_t__ gen_rtx_REG (int,int) ;
 int gen_untyped_call (scalar_t__,scalar_t__,int ) ;
 scalar_t__ last_call_insn () ;
 scalar_t__ memory_address (int,scalar_t__) ;
 int negate_rtx (int,scalar_t__) ;
 scalar_t__ plus_constant (scalar_t__,int ) ;
 scalar_t__ prepare_call_address (scalar_t__,int *,scalar_t__*,int ,int ) ;
 int ptr_mode ;
 int result_vector (int,scalar_t__) ;
 int set_mem_align (scalar_t__,int ) ;
 scalar_t__ stub1 (int ,int ) ;
 TYPE_2__ targetm ;
 int use_reg (scalar_t__*,scalar_t__) ;
 scalar_t__ virtual_outgoing_args_rtx ;

__attribute__((used)) static rtx
expand_builtin_apply (rtx function, rtx arguments, rtx argsize)
{
  int size, align, regno;
  enum machine_mode mode;
  rtx incoming_args, result, reg, dest, src, call_insn;
  rtx old_stack_level = 0;
  rtx call_fusage = 0;
  rtx struct_value = targetm.calls.struct_value_rtx (cfun ? TREE_TYPE (cfun->decl) : 0, 0);

  arguments = convert_memory_address (Pmode, arguments);


  result = assign_stack_local (BLKmode, apply_result_size (), -1);


  incoming_args = gen_reg_rtx (Pmode);
  emit_move_insn (incoming_args, gen_rtx_MEM (Pmode, arguments));

  incoming_args = expand_simple_binop (Pmode, MINUS, incoming_args, argsize,
           incoming_args, 0, OPTAB_LIB_WIDEN);





  do_pending_stack_adjust ();
  NO_DEFER_POP;







    emit_stack_save (SAVE_BLOCK, &old_stack_level, NULL_RTX);



  allocate_dynamic_stack_space (argsize, 0, BITS_PER_UNIT);
  dest = virtual_outgoing_args_rtx;

  if (GET_CODE (argsize) == CONST_INT)
    dest = plus_constant (dest, -INTVAL (argsize));
  else
    dest = gen_rtx_PLUS (Pmode, dest, negate_rtx (Pmode, argsize));

  dest = gen_rtx_MEM (BLKmode, dest);
  set_mem_align (dest, PARM_BOUNDARY);
  src = gen_rtx_MEM (BLKmode, incoming_args);
  set_mem_align (src, PARM_BOUNDARY);
  emit_block_move (dest, src, argsize, BLOCK_OP_NORMAL);


  apply_args_size ();
  arguments = gen_rtx_MEM (BLKmode, arguments);
  set_mem_align (arguments, PARM_BOUNDARY);


  size = GET_MODE_SIZE (Pmode);
  if (struct_value)
    size += GET_MODE_SIZE (Pmode);



  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if ((mode = apply_args_mode[regno]) != VOIDmode)
      {
 align = GET_MODE_ALIGNMENT (mode) / BITS_PER_UNIT;
 if (size % align != 0)
   size = CEIL (size, align) * align;
 reg = gen_rtx_REG (mode, regno);
 emit_move_insn (reg, adjust_address (arguments, mode, size));
 use_reg (&call_fusage, reg);
 size += GET_MODE_SIZE (mode);
      }



  size = GET_MODE_SIZE (Pmode);
  if (struct_value)
    {
      rtx value = gen_reg_rtx (Pmode);
      emit_move_insn (value, adjust_address (arguments, Pmode, size));
      emit_move_insn (struct_value, value);
      if (REG_P (struct_value))
 use_reg (&call_fusage, struct_value);
      size += GET_MODE_SIZE (Pmode);
    }


  function = prepare_call_address (function, ((void*)0), &call_fusage, 0, 0);




  if (GET_CODE (function) != SYMBOL_REF)
    function = memory_address (FUNCTION_MODE, function);
    gcc_unreachable ();



  call_insn = last_call_insn ();
  add_function_usage_to (call_insn, call_fusage);







    emit_stack_restore (SAVE_BLOCK, old_stack_level, NULL_RTX);

  OK_DEFER_POP;


  result = copy_addr_to_reg (XEXP (result, 0));
  return convert_memory_address (ptr_mode, result);
}
