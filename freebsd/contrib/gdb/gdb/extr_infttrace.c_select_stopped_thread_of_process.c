
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tts_signo; } ;
struct TYPE_10__ {TYPE_1__ tts_signal; } ;
struct TYPE_11__ {scalar_t__ tts_event; scalar_t__ tts_lwpid; TYPE_2__ tts_u; } ;
typedef TYPE_3__ ttstate_t ;
typedef scalar_t__ lwpid_t ;


 scalar_t__ TTEVT_NONE ;
 scalar_t__ TTEVT_SIGNAL ;
 int breakpoint_here_p (scalar_t__) ;
 int can_touch_threads_of_process (int,scalar_t__) ;
 int copy_ttstate_t (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ debug_on ;
 scalar_t__ doing_fake_step ;
 scalar_t__ fake_step_tid ;
 char* get_printable_name_of_ttrace_event (scalar_t__) ;
 scalar_t__ get_process_first_stopped_thread_id (int,TYPE_3__*) ;
 scalar_t__ get_process_next_stopped_thread_id (int,TYPE_3__*) ;
 scalar_t__ get_raw_pc (scalar_t__) ;
 int printf (char*,scalar_t__,...) ;
 int set_handled (int,scalar_t__) ;
 int warning (char*) ;
 int was_handled (scalar_t__) ;

__attribute__((used)) static int
select_stopped_thread_of_process (int pid, ttstate_t *tsp)
{
  lwpid_t candidate_tid, tid;
  ttstate_t candidate_tstate, tstate;







  if (!can_touch_threads_of_process (pid, tsp->tts_event))
    return 1;





  candidate_tid = 0;
  for (tid = get_process_first_stopped_thread_id (pid, &tstate);
       tid != 0;
       tid = get_process_next_stopped_thread_id (pid, &tstate))
    {




      if (tstate.tts_event == TTEVT_NONE)
 {
   set_handled (pid, tstate.tts_lwpid);
 }
      else if (doing_fake_step && (tstate.tts_lwpid == fake_step_tid))
 {
   candidate_tid = tstate.tts_lwpid;
   candidate_tstate = tstate;
 }
      else if (!was_handled (tstate.tts_lwpid) && candidate_tid == 0)
 {
   candidate_tid = tstate.tts_lwpid;
   candidate_tstate = tstate;
 }





    }



  if (doing_fake_step)
    {
      if (candidate_tid == fake_step_tid)
 {


   tstate = candidate_tstate;
 }
      else
 {
   warning ("Internal error: fake-step failed to complete.");
   return 0;
 }
    }
  else if (candidate_tid != 0)
    {


      tstate = candidate_tstate;
    }
  else if (tid != 0)
    {
      warning ("Internal error in call of ttrace_wait.");
      return 0;
    }
  else
    {
      warning ("Internal error: no unhandled thread event to select");
      return 0;
    }

  copy_ttstate_t (tsp, &tstate);
  return 1;
}
