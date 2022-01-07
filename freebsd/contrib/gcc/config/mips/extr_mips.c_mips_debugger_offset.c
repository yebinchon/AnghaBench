
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {scalar_t__ args_size; scalar_t__ total_size; int initialized; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ arg_pointer_rtx ;
 TYPE_3__* cfun ;
 scalar_t__ compute_frame_size (int ) ;
 scalar_t__ const0_rtx ;
 scalar_t__ eliminate_constant_term (scalar_t__,scalar_t__*) ;
 int fatal_insn (char*,scalar_t__) ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__ frame_pointer_rtx ;
 int get_frame_size () ;
 scalar_t__ hard_frame_pointer_rtx ;
 scalar_t__ stack_pointer_rtx ;

HOST_WIDE_INT
mips_debugger_offset (rtx addr, HOST_WIDE_INT offset)
{
  rtx offset2 = const0_rtx;
  rtx reg = eliminate_constant_term (addr, &offset2);

  if (offset == 0)
    offset = INTVAL (offset2);

  if (reg == stack_pointer_rtx || reg == frame_pointer_rtx
      || reg == hard_frame_pointer_rtx)
    {
      HOST_WIDE_INT frame_size = (!cfun->machine->frame.initialized)
      ? compute_frame_size (get_frame_size ())
      : cfun->machine->frame.total_size;


      if (frame_pointer_needed && TARGET_MIPS16)
 frame_size -= cfun->machine->frame.args_size;

      offset = offset - frame_size;
    }
  return offset;
}
