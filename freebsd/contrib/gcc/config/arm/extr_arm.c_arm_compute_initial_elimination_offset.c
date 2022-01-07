
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int soft_frame; int saved_args; int frame; int saved_regs; int outgoing_args; } ;
typedef TYPE_2__ arm_stack_offsets ;
struct TYPE_7__ {TYPE_1__* machine; int * static_chain_decl; } ;
struct TYPE_5__ {int uses_anonymous_args; } ;
typedef int HOST_WIDE_INT ;







 TYPE_2__* arm_get_frame_offsets () ;
 TYPE_3__* cfun ;
 int frame_pointer_needed ;
 int gcc_unreachable () ;

HOST_WIDE_INT
arm_compute_initial_elimination_offset (unsigned int from, unsigned int to)
{
  arm_stack_offsets *offsets;

  offsets = arm_get_frame_offsets ();





  switch (from)
    {
    case 132:
      switch (to)
 {
 case 128:
   return 0;

 case 130:


   return offsets->soft_frame - offsets->saved_args;

 case 131:


   if (offsets->frame == offsets->saved_regs)
     return 0;

   return (frame_pointer_needed
    && cfun->static_chain_decl != ((void*)0)
    && ! cfun->machine->uses_anonymous_args) ? 4 : 0;

 case 129:


   return offsets->outgoing_args - (offsets->saved_args + 4);

 default:
   gcc_unreachable ();
 }
      gcc_unreachable ();

    case 130:
      switch (to)
 {
 case 128:
   return 0;

 case 131:





   return offsets->frame - offsets->soft_frame;

 case 129:
   return offsets->outgoing_args - offsets->soft_frame;

 default:
   gcc_unreachable ();
 }
      gcc_unreachable ();

    default:





      gcc_unreachable ();
    }
}
