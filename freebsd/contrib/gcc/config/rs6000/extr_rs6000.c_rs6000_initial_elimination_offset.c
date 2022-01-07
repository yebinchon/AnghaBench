
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ total_size; scalar_t__ push_p; scalar_t__ parm_size; scalar_t__ vars_size; scalar_t__ fixed_size; } ;
typedef TYPE_1__ rs6000_stack_t ;
typedef scalar_t__ HOST_WIDE_INT ;


 int ARG_POINTER_REGNUM ;
 scalar_t__ FRAME_GROWS_DOWNWARD ;
 int FRAME_POINTER_REGNUM ;
 int HARD_FRAME_POINTER_REGNUM ;
 int RS6000_PIC_OFFSET_TABLE_REGNUM ;
 int STACK_POINTER_REGNUM ;
 int gcc_unreachable () ;
 TYPE_1__* rs6000_stack_info () ;

HOST_WIDE_INT
rs6000_initial_elimination_offset (int from, int to)
{
  rs6000_stack_t *info = rs6000_stack_info ();
  HOST_WIDE_INT offset;

  if (from == HARD_FRAME_POINTER_REGNUM && to == STACK_POINTER_REGNUM)
    offset = info->push_p ? 0 : -info->total_size;
  else if (from == FRAME_POINTER_REGNUM && to == STACK_POINTER_REGNUM)
    {
      offset = info->push_p ? 0 : -info->total_size;
      if (FRAME_GROWS_DOWNWARD)
 offset += info->fixed_size + info->vars_size + info->parm_size;
    }
  else if (from == FRAME_POINTER_REGNUM && to == HARD_FRAME_POINTER_REGNUM)
    offset = FRAME_GROWS_DOWNWARD
      ? info->fixed_size + info->vars_size + info->parm_size
      : 0;
  else if (from == ARG_POINTER_REGNUM && to == HARD_FRAME_POINTER_REGNUM)
    offset = info->total_size;
  else if (from == ARG_POINTER_REGNUM && to == STACK_POINTER_REGNUM)
    offset = info->push_p ? info->total_size : 0;
  else if (from == RS6000_PIC_OFFSET_TABLE_REGNUM)
    offset = 0;
  else
    gcc_unreachable ();

  return offset;
}
