
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int outgoing_args; int frame; } ;
typedef TYPE_1__ arm_stack_offsets ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 int LR_REGNUM ;
 int Pmode ;
 unsigned long arm_compute_save_reg_mask () ;
 TYPE_1__* arm_get_frame_offsets () ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 scalar_t__ frame_pointer_needed ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_frame_mem (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int hard_frame_pointer_rtx ;
 int plus_constant (int ,int) ;
 int stack_pointer_rtx ;

void
arm_set_return_address (rtx source, rtx scratch)
{
  arm_stack_offsets *offsets;
  HOST_WIDE_INT delta;
  rtx addr;
  unsigned long saved_regs;

  saved_regs = arm_compute_save_reg_mask ();

  if ((saved_regs & (1 << LR_REGNUM)) == 0)
    emit_move_insn (gen_rtx_REG (Pmode, LR_REGNUM), source);
  else
    {
      if (frame_pointer_needed)
 addr = plus_constant(hard_frame_pointer_rtx, -4);
      else
 {

   offsets = arm_get_frame_offsets ();
   delta = offsets->outgoing_args - (offsets->frame + 4);


   if (delta >= 4096)
     {
       emit_insn (gen_addsi3 (scratch, stack_pointer_rtx,
         GEN_INT (delta & ~4095)));
       addr = scratch;
       delta &= 4095;
     }
   else
     addr = stack_pointer_rtx;

   addr = plus_constant (addr, delta);
 }
      emit_move_insn (gen_frame_mem (Pmode, addr), source);
    }
}
