
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int START_INFERIOR_TRAPS_EXPECTED ;
 int child_ops ;
 int pid_to_ptid (int) ;
 int push_target (int *) ;
 int startup_inferior (int ) ;
 int target_acknowledge_created_inferior (int) ;
 int target_post_startup_inferior (int ) ;

__attribute__((used)) static void
ptrace_him (int pid)
{
  push_target (&child_ops);







  target_acknowledge_created_inferior (pid);





  startup_inferior (START_INFERIOR_TRAPS_EXPECTED);




  target_post_startup_inferior (pid_to_ptid (pid));
}
