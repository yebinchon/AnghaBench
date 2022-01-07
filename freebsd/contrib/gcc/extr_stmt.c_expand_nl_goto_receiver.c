
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct elims TYPE_1__ ;


struct elims {int const from; int const to; } ;


 size_t ARG_POINTER_REGNUM ;
 size_t ARRAY_SIZE (TYPE_1__ const*) ;
 TYPE_1__* ELIMINABLE_REGS ;
 int const HARD_FRAME_POINTER_REGNUM ;
 int HAVE_nonlocal_goto ;
 scalar_t__ HAVE_nonlocal_goto_receiver ;
 int VOIDmode ;
 int cfun ;
 int copy_to_reg (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 scalar_t__* fixed_regs ;
 int gen_nonlocal_goto_receiver () ;
 int gen_rtx_ASM_INPUT (int ,char*) ;
 int gen_rtx_CLOBBER (int ,int ) ;
 int gen_rtx_USE (int ,int ) ;
 int get_arg_pointer_save_area (int ) ;
 int hard_frame_pointer_rtx ;
 int static_chain_rtx ;
 int virtual_incoming_args_rtx ;
 int virtual_stack_vars_rtx ;

__attribute__((used)) static void
expand_nl_goto_receiver (void)
{


  emit_insn (gen_rtx_USE (VOIDmode, hard_frame_pointer_rtx));



  emit_insn (gen_rtx_CLOBBER (VOIDmode, static_chain_rtx));
    emit_move_insn (virtual_stack_vars_rtx, hard_frame_pointer_rtx);
  emit_insn (gen_rtx_ASM_INPUT (VOIDmode, ""));
}
