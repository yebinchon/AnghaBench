
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DECL_INLINE (int ) ;
 scalar_t__ EXIT_IGNORE_STACK ;
 scalar_t__ current_function_calls_alloca ;
 int current_function_decl ;
 int discard_pending_stack_adjust () ;
 int flag_no_inline ;
 int flag_omit_frame_pointer ;
 scalar_t__ optimize ;

void
clear_pending_stack_adjust (void)
{
  if (optimize > 0
      && (! flag_omit_frame_pointer || current_function_calls_alloca)
      && EXIT_IGNORE_STACK
      && ! (DECL_INLINE (current_function_decl) && ! flag_no_inline))
    discard_pending_stack_adjust ();
}
