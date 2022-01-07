
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int outgoing_args; int saved_regs; int locals_base; } ;
typedef TYPE_1__ arm_stack_offsets ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 scalar_t__ IS_NAKED (int ) ;
 size_t LAST_ARG_REGNUM ;
 size_t LR_REGNUM ;
 int SImode ;
 int TARGET_SCHED_PROLOG ;
 int VOIDmode ;
 int arm_current_func_type () ;
 TYPE_1__* arm_get_frame_offsets () ;
 int * call_used_regs ;
 scalar_t__ current_function_profile ;
 int emit_insn (int ) ;
 scalar_t__ frame_pointer_needed ;
 int gcc_assert (int) ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_blockage () ;
 int gen_movsi (int ,int ) ;
 int gen_prologue_use (int ) ;
 int gen_rtx_CLOBBER (int ,int ) ;
 int gen_rtx_REG (int ,size_t) ;
 int gen_rtx_USE (int ,int ) ;
 int hard_frame_pointer_rtx ;
 scalar_t__* regs_ever_live ;
 int stack_pointer_rtx ;

void
thumb_expand_epilogue (void)
{
  HOST_WIDE_INT amount;
  arm_stack_offsets *offsets;
  int regno;


  if (IS_NAKED (arm_current_func_type ()))
    return;

  offsets = arm_get_frame_offsets ();
  amount = offsets->outgoing_args - offsets->saved_regs;

  if (frame_pointer_needed)
    {
      emit_insn (gen_movsi (stack_pointer_rtx, hard_frame_pointer_rtx));
      amount = offsets->locals_base - offsets->saved_regs;
    }

  gcc_assert (amount >= 0);
  if (amount)
    {
      if (amount < 512)
 emit_insn (gen_addsi3 (stack_pointer_rtx, stack_pointer_rtx,
          GEN_INT (amount)));
      else
 {

   rtx reg = gen_rtx_REG (SImode, LAST_ARG_REGNUM);

   emit_insn (gen_movsi (reg, GEN_INT (amount)));
   emit_insn (gen_addsi3 (stack_pointer_rtx, stack_pointer_rtx, reg));
 }
    }



  emit_insn (gen_prologue_use (stack_pointer_rtx));

  if (current_function_profile || !TARGET_SCHED_PROLOG)
    emit_insn (gen_blockage ());



  for (regno = 0; regno < 13; regno++)
    if (regs_ever_live[regno] && !call_used_regs[regno])
      emit_insn (gen_rtx_CLOBBER (VOIDmode, gen_rtx_REG (SImode, regno)));

  if (! regs_ever_live[LR_REGNUM])
    emit_insn (gen_rtx_USE (VOIDmode, gen_rtx_REG (SImode, LR_REGNUM)));
}
