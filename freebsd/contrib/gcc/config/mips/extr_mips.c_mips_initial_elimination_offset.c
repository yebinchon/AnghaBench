
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {scalar_t__ args_size; scalar_t__ total_size; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef scalar_t__ HOST_WIDE_INT ;




 int HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ TARGET_MIPS16 ;
 TYPE_3__* cfun ;
 int compute_frame_size (int ) ;
 scalar_t__ current_function_pretend_args_size ;
 int gcc_unreachable () ;
 int get_frame_size () ;

HOST_WIDE_INT
mips_initial_elimination_offset (int from, int to)
{
  HOST_WIDE_INT offset;

  compute_frame_size (get_frame_size ());


  switch (from)
    {
    case 128:
      offset = 0;
      break;

    case 129:
      offset = (cfun->machine->frame.total_size
  - current_function_pretend_args_size);
      break;

    default:
      gcc_unreachable ();
    }

  if (TARGET_MIPS16 && to == HARD_FRAME_POINTER_REGNUM)
    offset -= cfun->machine->frame.args_size;

  return offset;
}
