
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {int mask; int gp_sp_offset; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;


 int GET_MODE (int ) ;
 TYPE_3__* cfun ;
 int compute_frame_size (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_assert (int) ;
 int gen_rtx_MEM (int ,int ) ;
 int get_frame_size () ;
 int mips_add_offset (int ,int ,int ) ;
 int stack_pointer_rtx ;

void
mips_set_return_address (rtx address, rtx scratch)
{
  rtx slot_address;

  compute_frame_size (get_frame_size ());
  gcc_assert ((cfun->machine->frame.mask >> 31) & 1);
  slot_address = mips_add_offset (scratch, stack_pointer_rtx,
      cfun->machine->frame.gp_sp_offset);

  emit_move_insn (gen_rtx_MEM (GET_MODE (address), slot_address), address);
}
