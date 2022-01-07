
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cleanup {int dummy; } ;
struct TYPE_5__ {int wait_some_more; int wp; int waiton_ptid; int ptid; } ;


 int INF_EXEC_COMPLETE ;
 int INF_EXEC_CONTINUE ;
 TYPE_1__* async_ecs ;
 TYPE_1__ async_ecss ;
 int delete_breakpoint_current_contents ;
 int delete_step_resume_breakpoint ;
 int do_exec_cleanups (struct cleanup*) ;
 int handle_inferior_event (TYPE_1__*) ;
 int inferior_event_handler (int ,int *) ;
 int inferior_ptid ;
 int init_execution_control_state (TYPE_1__*) ;
 struct cleanup* make_exec_cleanup (int ,int *) ;
 int normal_stop () ;
 int overlay_cache_invalid ;
 int previous_inferior_ptid ;
 int registers_changed () ;
 scalar_t__ step_multi ;
 int step_resume_breakpoint ;
 scalar_t__ stop_step ;
 int target_wait (int ,int ) ;
 int target_wait_hook (int ,int ) ;
 int through_sigtramp_breakpoint ;

void
fetch_inferior_event (void *client_data)
{
  static struct cleanup *old_cleanups;

  async_ecs = &async_ecss;

  if (!async_ecs->wait_some_more)
    {
      old_cleanups = make_exec_cleanup (delete_step_resume_breakpoint,
     &step_resume_breakpoint);
      make_exec_cleanup (delete_breakpoint_current_contents,
    &through_sigtramp_breakpoint);


      init_execution_control_state (async_ecs);


      previous_inferior_ptid = inferior_ptid;

      overlay_cache_invalid = 1;







      registers_changed ();
    }

  if (target_wait_hook)
    async_ecs->ptid =
      target_wait_hook (async_ecs->waiton_ptid, async_ecs->wp);
  else
    async_ecs->ptid = target_wait (async_ecs->waiton_ptid, async_ecs->wp);


  handle_inferior_event (async_ecs);

  if (!async_ecs->wait_some_more)
    {



      do_exec_cleanups (old_cleanups);
      normal_stop ();
      if (step_multi && stop_step)
 inferior_event_handler (INF_EXEC_CONTINUE, ((void*)0));
      else
 inferior_event_handler (INF_EXEC_COMPLETE, ((void*)0));
    }
}
