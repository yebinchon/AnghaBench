
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int soft_frame; int saved_args; int outgoing_args; } ;
typedef TYPE_1__ arm_stack_offsets ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 int LR_REGNUM ;
 int Pmode ;
 int SImode ;
 int SP_REGNUM ;
 scalar_t__ TARGET_BACKTRACE ;
 int THUMB_HARD_FRAME_POINTER_REGNUM ;
 int VOIDmode ;
 TYPE_1__* arm_get_frame_offsets () ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 scalar_t__ frame_pointer_needed ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_frame_mem (int ,int ) ;
 int gen_movsi (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_USE (int ,int ) ;
 int plus_constant (int ,int) ;
 int stack_pointer_rtx ;
 unsigned long thumb_compute_save_reg_mask () ;

void
thumb_set_return_address (rtx source, rtx scratch)
{
  arm_stack_offsets *offsets;
  HOST_WIDE_INT delta;
  int reg;
  rtx addr;
  unsigned long mask;

  emit_insn (gen_rtx_USE (VOIDmode, source));

  mask = thumb_compute_save_reg_mask ();
  if (mask & (1 << LR_REGNUM))
    {
      offsets = arm_get_frame_offsets ();


      if (frame_pointer_needed)
 {
   delta = offsets->soft_frame - offsets->saved_args;
   reg = THUMB_HARD_FRAME_POINTER_REGNUM;
 }
      else
 {
   delta = offsets->outgoing_args - offsets->saved_args;
   reg = SP_REGNUM;
 }

      if (TARGET_BACKTRACE)
 delta -= 16;

      delta -= 4;


      addr = gen_rtx_REG (SImode, reg);
      if ((reg != SP_REGNUM && delta >= 128)
   || delta >= 1024)
 {
   emit_insn (gen_movsi (scratch, GEN_INT (delta)));
   emit_insn (gen_addsi3 (scratch, scratch, stack_pointer_rtx));
   addr = scratch;
 }
      else
 addr = plus_constant (addr, delta);

      emit_move_insn (gen_frame_mem (Pmode, addr), source);
    }
  else
    emit_move_insn (gen_rtx_REG (Pmode, LR_REGNUM), source);
}
