
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ttwopt_t ;
struct TYPE_8__ {int tts_pid; int tts_lwpid; int tts_event; } ;
typedef TYPE_1__ ttstate_t ;
struct TYPE_9__ {int have_state; int last_stop_state; } ;
typedef TYPE_2__ thread_info ;
typedef int lwpid_t ;


 scalar_t__ FAKE_STEPPING ;
 scalar_t__ FORKING ;
 scalar_t__ RUNNING ;
 scalar_t__ STOPPED ;
 int TTEVT_NONE ;
 scalar_t__ VFORKING ;
 int any_thread_records () ;
 int call_real_ttrace_wait (int,int,int ,TYPE_1__*,size_t) ;
 scalar_t__ can_touch_threads_of_process (int,int ) ;
 int copy_ttstate_t (int *,TYPE_1__*) ;
 scalar_t__ debug_on ;
 scalar_t__ doing_fake_step ;
 int error (char*) ;
 int fake_step_tid ;
 TYPE_2__* find_thread_info (int) ;
 int get_pid_for (int) ;
 int get_printable_name_of_process_state (scalar_t__) ;
 int map_from_gdb_tid (int) ;
 scalar_t__ more_events_left ;
 int printf (char*,...) ;
 scalar_t__ process_state ;
 int select_stopped_thread_of_process (int,TYPE_1__*) ;
 int set_handled (int,int) ;
 int stop_all_threads_of_process (int) ;
 int warning (char*,...) ;

__attribute__((used)) static int
call_ttrace_wait (int pid, ttwopt_t option, ttstate_t *tsp, size_t tsp_size)
{


  static int real_pid;





  int wait_pid = 0;
  lwpid_t wait_tid = 0;
  lwpid_t real_tid;

  int ttw_status = 0;

  thread_info *tinfo = ((void*)0);

  if (pid != 0)
    {







      if (!any_thread_records ())
 error ("No thread records for ttrace call w. specific pid");




      real_tid = map_from_gdb_tid (pid);
      real_pid = get_pid_for (real_tid);




    }
  if (more_events_left == 0)
    {

      if (process_state == RUNNING)
 {


   ;
 }
      else if (process_state == FAKE_STEPPING)
 {





   if (!doing_fake_step)
     {
       warning ("Inconsistent thread state.");
     }
 }
      else if ((process_state == FORKING)
        || (process_state == VFORKING))
 {




   ;
 }
      else if (process_state == STOPPED)
 {
   warning ("Process not running at wait call.");
 }
      else


 warning ("Inconsistent process state.");
    }

  else
    {


      if (process_state == STOPPED)
 {


   ;
 }
      else if (process_state == RUNNING)
 {



   warning ("Trying to continue with buffered events:");
 }
      else if (process_state == FAKE_STEPPING)
 {



   if (!doing_fake_step)
     {
       warning ("Losing buffered thread events!\n");
     }
 }
      else if ((process_state == FORKING)
        || (process_state == VFORKING))
 {




   ;
 }
      else
 warning ("Process in unknown state with buffered events.");
    }
  if (doing_fake_step)
    {
      wait_tid = fake_step_tid;
      wait_pid = get_pid_for (fake_step_tid);






    }

  if (more_events_left == 0
      || process_state != STOPPED)
    {
      ttw_status = call_real_ttrace_wait (wait_pid, wait_tid, option, tsp, tsp_size);





      real_pid = tsp->tts_pid;







      if (can_touch_threads_of_process (real_pid, tsp->tts_event))
 {
   if (!doing_fake_step)
     {
       if (more_events_left > 0)
  warning ("Internal error in stopping process");

       stop_all_threads_of_process (real_pid);







     }
 }
      process_state = STOPPED;





    }

  else
    {
      if (process_state != STOPPED)
 {
   warning ("Process not stopped at wait call, in state '%s'.\n",
     get_printable_name_of_process_state (process_state));
 }

      if (doing_fake_step)
 error ("Internal error in stepping over breakpoint");

      ttw_status = 0;
    }



  if (!select_stopped_thread_of_process (real_pid, tsp))
    warning ("Can't find event, using previous event.");

  else if (tsp->tts_event == TTEVT_NONE)
    warning ("Internal error: no thread has a real event.");

  else if (doing_fake_step)
    {
      if (fake_step_tid != tsp->tts_lwpid)
 warning ("Internal error in stepping over breakpoint.");



      doing_fake_step = 0;
      fake_step_tid = 0;
    }





  set_handled (real_pid, tsp->tts_lwpid);
  tinfo = find_thread_info (tsp->tts_lwpid);
  if (tinfo != ((void*)0))
    {
      copy_ttstate_t (&tinfo->last_stop_state, tsp);
      tinfo->have_state = 1;
    }

  return ttw_status;
}
