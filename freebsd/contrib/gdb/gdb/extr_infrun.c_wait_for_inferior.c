
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execution_control_state {int wait_some_more; int wp; int waiton_ptid; int ptid; } ;
struct cleanup {int dummy; } ;


 int delete_breakpoint_current_contents ;
 int delete_step_resume_breakpoint ;
 int do_cleanups (struct cleanup*) ;
 int handle_inferior_event (struct execution_control_state*) ;
 int inferior_ptid ;
 int init_execution_control_state (struct execution_control_state*) ;
 struct cleanup* make_cleanup (int ,int *) ;
 int overlay_cache_invalid ;
 int previous_inferior_ptid ;
 int registers_changed () ;
 int step_resume_breakpoint ;
 int target_wait (int ,int ) ;
 int target_wait_hook (int ,int ) ;
 int through_sigtramp_breakpoint ;

void
wait_for_inferior (void)
{
  struct cleanup *old_cleanups;
  struct execution_control_state ecss;
  struct execution_control_state *ecs;

  old_cleanups = make_cleanup (delete_step_resume_breakpoint,
          &step_resume_breakpoint);
  make_cleanup (delete_breakpoint_current_contents,
  &through_sigtramp_breakpoint);



  ecs = &ecss;


  init_execution_control_state (ecs);


  previous_inferior_ptid = inferior_ptid;

  overlay_cache_invalid = 1;







  registers_changed ();

  while (1)
    {
      if (target_wait_hook)
 ecs->ptid = target_wait_hook (ecs->waiton_ptid, ecs->wp);
      else
 ecs->ptid = target_wait (ecs->waiton_ptid, ecs->wp);


      handle_inferior_event (ecs);

      if (!ecs->wait_some_more)
 break;
    }
  do_cleanups (old_cleanups);
}
