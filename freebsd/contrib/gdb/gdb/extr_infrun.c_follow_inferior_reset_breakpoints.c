
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int breakpoint_re_set () ;
 int breakpoint_re_set_thread (scalar_t__) ;
 int insert_breakpoints () ;
 scalar_t__ step_resume_breakpoint ;

void
follow_inferior_reset_breakpoints (void)
{
  if (step_resume_breakpoint)
    breakpoint_re_set_thread (step_resume_breakpoint);






  breakpoint_re_set ();
  insert_breakpoints ();
}
