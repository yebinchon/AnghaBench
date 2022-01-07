
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ step_resume_breakpoint ;
 int warning (char*) ;

__attribute__((used)) static void
check_for_old_step_resume_breakpoint (void)
{
  if (step_resume_breakpoint)
    warning
      ("GDB bug: infrun.c (wait_for_inferior): dropping old step_resume breakpoint");
}
