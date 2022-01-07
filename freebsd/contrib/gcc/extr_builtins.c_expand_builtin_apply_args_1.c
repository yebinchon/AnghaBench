
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
struct TYPE_4__ {scalar_t__ (* struct_value_rtx ) (int ,int) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int CEIL (int,int) ;
 int FIRST_PSEUDO_REGISTER ;
 int GET_MODE_ALIGNMENT (int) ;
 int GET_MODE_SIZE (int) ;
 int INCOMING_REGNO (int) ;
 int NULL_RTX ;
 int Pmode ;
 int TREE_TYPE (int ) ;
 int VOIDmode ;
 int XEXP (scalar_t__,int ) ;
 int adjust_address (scalar_t__,int,int) ;
 int* apply_args_mode ;
 int apply_args_size () ;
 scalar_t__ assign_stack_local (int ,int ,int) ;
 TYPE_3__* cfun ;
 scalar_t__ copy_addr_to_reg (int ) ;
 scalar_t__ copy_to_reg (scalar_t__) ;
 int current_function_pretend_args_size ;
 int emit_move_insn (int ,scalar_t__) ;
 scalar_t__ force_operand (int ,int ) ;
 scalar_t__ gen_rtx_REG (int,int ) ;
 int plus_constant (scalar_t__,int ) ;
 scalar_t__ stub1 (int ,int) ;
 scalar_t__ stub2 (int ,int) ;
 TYPE_2__ targetm ;
 scalar_t__ virtual_incoming_args_rtx ;

__attribute__((used)) static rtx
expand_builtin_apply_args_1 (void)
{
  rtx registers, tem;
  int size, align, regno;
  enum machine_mode mode;
  rtx struct_incoming_value = targetm.calls.struct_value_rtx (cfun ? TREE_TYPE (cfun->decl) : 0, 1);



  registers = assign_stack_local (BLKmode, apply_args_size (), -1);


  size = GET_MODE_SIZE (Pmode);
  if (targetm.calls.struct_value_rtx (cfun ? TREE_TYPE (cfun->decl) : 0, 0))
    size += GET_MODE_SIZE (Pmode);


  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if ((mode = apply_args_mode[regno]) != VOIDmode)
      {
 align = GET_MODE_ALIGNMENT (mode) / BITS_PER_UNIT;
 if (size % align != 0)
   size = CEIL (size, align) * align;

 tem = gen_rtx_REG (mode, INCOMING_REGNO (regno));

 emit_move_insn (adjust_address (registers, mode, size), tem);
 size += GET_MODE_SIZE (mode);
      }


  tem = copy_to_reg (virtual_incoming_args_rtx);
  emit_move_insn (adjust_address (registers, Pmode, 0), tem);

  size = GET_MODE_SIZE (Pmode);



  if (struct_incoming_value)
    {
      emit_move_insn (adjust_address (registers, Pmode, size),
        copy_to_reg (struct_incoming_value));
      size += GET_MODE_SIZE (Pmode);
    }


  return copy_addr_to_reg (XEXP (registers, 0));
}
