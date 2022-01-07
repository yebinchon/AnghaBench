
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int status; int ptid; } ;


 double RAND_MAX ;
 int count_events_callback ;
 scalar_t__ debug_lin_lwp ;
 int fprintf_unfiltered (int ,char*,int,...) ;
 int gdb_stdlog ;
 struct lwp_info* iterate_over_lwps (int ,int*) ;
 scalar_t__ rand () ;
 int select_event_lwp_callback ;
 int select_singlestep_lwp_callback ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static void
select_event_lwp (struct lwp_info **orig_lp, int *status)
{
  int num_events = 0;
  int random_selector;
  struct lwp_info *event_lp;


  (*orig_lp)->status = *status;


  event_lp = iterate_over_lwps (select_singlestep_lwp_callback, ((void*)0));
  if (event_lp != ((void*)0))
    {
      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog,
       "SEL: Select single-step %s\n",
       target_pid_to_str (event_lp->ptid));
    }
  else
    {




      iterate_over_lwps (count_events_callback, &num_events);


      random_selector = (int)
 ((num_events * (double) rand ()) / (RAND_MAX + 1.0));

      if (debug_lin_lwp && num_events > 1)
 fprintf_unfiltered (gdb_stdlog,
       "SEL: Found %d SIGTRAP events, selecting #%d\n",
       num_events, random_selector);

      event_lp = iterate_over_lwps (select_event_lwp_callback,
        &random_selector);
    }

  if (event_lp != ((void*)0))
    {

      *orig_lp = event_lp;
      *status = event_lp->status;
    }


  (*orig_lp)->status = 0;
}
