
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execution_control_state {scalar_t__ infwait_state; int wait_some_more; int ws; int * wp; int waiton_ptid; } ;


 scalar_t__ infwait_normal_state ;
 int overlay_cache_invalid ;
 int pid_to_ptid (int) ;
 int registers_changed () ;

__attribute__((used)) static void
prepare_to_wait (struct execution_control_state *ecs)
{
  if (ecs->infwait_state == infwait_normal_state)
    {
      overlay_cache_invalid = 1;







      registers_changed ();
      ecs->waiton_ptid = pid_to_ptid (-1);
      ecs->wp = &(ecs->ws);
    }



  ecs->wait_some_more = 1;
}
