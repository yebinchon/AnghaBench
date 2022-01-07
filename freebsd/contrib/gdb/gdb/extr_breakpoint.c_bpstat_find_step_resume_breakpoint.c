
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct breakpoint {scalar_t__ type; int thread; } ;
typedef TYPE_1__* bpstat ;
struct TYPE_3__ {struct breakpoint* breakpoint_at; struct TYPE_3__* next; } ;


 scalar_t__ bp_step_resume ;
 int error (char*) ;
 int inferior_ptid ;
 int pid_to_thread_id (int ) ;

struct breakpoint *
bpstat_find_step_resume_breakpoint (bpstat bsp)
{
  int current_thread;

  if (bsp == ((void*)0))
    error ("Internal error (bpstat_find_step_resume_breakpoint)");

  current_thread = pid_to_thread_id (inferior_ptid);

  for (; bsp != ((void*)0); bsp = bsp->next)
    {
      if ((bsp->breakpoint_at != ((void*)0)) &&
   (bsp->breakpoint_at->type == bp_step_resume) &&
   (bsp->breakpoint_at->thread == current_thread ||
    bsp->breakpoint_at->thread == -1))
 return bsp->breakpoint_at;
    }

  error ("Internal error (no step_resume breakpoint found)");
}
