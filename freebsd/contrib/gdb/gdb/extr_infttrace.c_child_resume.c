
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int have_signal; int signal_value; scalar_t__ stepping_mode; scalar_t__ terminated; } ;
typedef TYPE_1__ thread_info ;
typedef int ptid_t ;
typedef scalar_t__ process_state_t ;
typedef scalar_t__ lwpid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 scalar_t__ DO_CONTINUE ;
 scalar_t__ DO_DEFAULT ;
 scalar_t__ DO_STEP ;
 scalar_t__ FAKE_STEPPING ;
 scalar_t__ INFTTRACE_ALL_THREADS ;
 scalar_t__ PIDGET (int ) ;
 scalar_t__ RUNNING ;
 int TT_NIL ;
 int TT_PROC_CONTINUE ;
 int call_ttrace (int ,scalar_t__,int ,int ,int ) ;
 int clear_all_handled () ;
 int clear_all_stepping_mode () ;
 int clear_handled (scalar_t__) ;
 int clear_stepping_mode (scalar_t__) ;
 scalar_t__ debug_on ;
 TYPE_1__* find_thread_info (scalar_t__) ;
 char* get_printable_name_of_process_state (scalar_t__) ;
 int inferior_ptid ;
 scalar_t__ map_from_gdb_tid (scalar_t__) ;
 scalar_t__ more_events_left ;
 int printf (char*,...) ;
 scalar_t__ process_state ;
 int thread_fake_step (scalar_t__,int) ;
 int threads_continue_all_but_one (scalar_t__,int) ;
 int threads_continue_all_with_signals (scalar_t__,int) ;
 int threads_continue_one_with_signal (scalar_t__,int) ;
 scalar_t__ vfork_in_flight ;
 scalar_t__ vforking_child_pid ;
 int warning (char*,...) ;

void
child_resume (ptid_t ptid, int step, enum target_signal signal)
{
  int resume_all_threads;
  lwpid_t tid;
  process_state_t new_process_state;
  lwpid_t gdb_tid = PIDGET (ptid);

  resume_all_threads =
    (gdb_tid == INFTTRACE_ALL_THREADS) ||
    (vfork_in_flight);

  if (resume_all_threads)
    {




      if (vfork_in_flight)
 tid = vforking_child_pid;
      else
 tid = map_from_gdb_tid (PIDGET (inferior_ptid));
    }
  else
    tid = map_from_gdb_tid (gdb_tid);
  if (process_state == RUNNING)
    warning ("Internal error in resume logic; doing resume or step anyway.");

  if (!step
      && resume_all_threads
      && signal != 0
      && more_events_left > 0)
    {




      thread_info *k;






      k = find_thread_info (tid);
      if (k != ((void*)0))
 {
   k->have_signal = 1;
   k->signal_value = signal;







 }







    }
  if (resume_all_threads
      && more_events_left > 0)
    {
      thread_info *p;

      if (!step)
 {
   return;
 }
      else
 {






 }

      p = find_thread_info (tid);
      if (p == ((void*)0))
 {
   warning ("No thread information for tid %d, 'next' command ignored.\n", tid);
   return;
 }
      else
 {







   if (p->stepping_mode != DO_DEFAULT)
     {
       warning ("Step or continue command applied to thread which is already stepping or continuing; command ignored.");

       return;
     }

   if (step)
     p->stepping_mode = DO_STEP;
   else
     p->stepping_mode = DO_CONTINUE;

   return;
 }
    }





  new_process_state = RUNNING;
  if (step)
    {
      if (resume_all_threads)
 {



   threads_continue_all_but_one (tid, signal);
   clear_all_handled ();
   clear_all_stepping_mode ();
 }

      else
 {
   thread_fake_step (tid, signal);





   clear_handled (tid);
   clear_stepping_mode (tid);
   new_process_state = FAKE_STEPPING;
 }
    }

  else
    {
      if (vfork_in_flight)
 {
   call_ttrace (TT_PROC_CONTINUE, tid, TT_NIL, TT_NIL, TT_NIL);
   clear_all_handled ();
   clear_all_stepping_mode ();
 }
      else if (resume_all_threads)
 {





   threads_continue_all_with_signals (tid, signal);

   clear_all_handled ();
   clear_all_stepping_mode ();
 }
      else
 {




   threads_continue_one_with_signal (tid, signal);




   clear_handled (tid);
   clear_stepping_mode (tid);
 }
    }

  process_state = new_process_state;







}
