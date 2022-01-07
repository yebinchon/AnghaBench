
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ soft_frame; scalar_t__ locals_base; scalar_t__ saved_regs; scalar_t__ outgoing_args; scalar_t__ saved_args; } ;
typedef TYPE_1__ arm_stack_offsets ;
typedef scalar_t__ HOST_WIDE_INT ;







 TYPE_1__* arm_get_frame_offsets () ;
 int gcc_unreachable () ;

HOST_WIDE_INT
thumb_compute_initial_elimination_offset (unsigned int from, unsigned int to)
{
  arm_stack_offsets *offsets;

  offsets = arm_get_frame_offsets ();

  switch (from)
    {
    case 132:
      switch (to)
 {
 case 129:
   return offsets->outgoing_args - offsets->saved_args;

 case 130:
   return offsets->soft_frame - offsets->saved_args;

 case 131:
   return offsets->saved_regs - offsets->saved_args;

 case 128:
   return offsets->locals_base - offsets->saved_args;

 default:
   gcc_unreachable ();
 }
      break;

    case 130:
      switch (to)
 {
 case 129:
   return offsets->outgoing_args - offsets->soft_frame;

 case 131:
   return offsets->saved_regs - offsets->soft_frame;

 case 128:
   return offsets->locals_base - offsets->soft_frame;

 default:
   gcc_unreachable ();
 }
      break;

    default:
      gcc_unreachable ();
    }
}
