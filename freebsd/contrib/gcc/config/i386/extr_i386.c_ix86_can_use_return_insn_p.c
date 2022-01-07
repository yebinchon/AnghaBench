
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix86_frame {scalar_t__ to_allocate; scalar_t__ nregs; } ;


 int current_function_args_size ;
 scalar_t__ current_function_pops_args ;
 scalar_t__ frame_pointer_needed ;
 int ix86_compute_frame_layout (struct ix86_frame*) ;
 int reload_completed ;

int
ix86_can_use_return_insn_p (void)
{
  struct ix86_frame frame;

  if (! reload_completed || frame_pointer_needed)
    return 0;



  if (current_function_pops_args
      && current_function_args_size >= 32768)
    return 0;

  ix86_compute_frame_layout (&frame);
  return frame.to_allocate == 0 && frame.nregs == 0;
}
