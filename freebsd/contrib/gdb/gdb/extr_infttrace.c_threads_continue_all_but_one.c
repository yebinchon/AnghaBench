
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tts_flags; scalar_t__ tts_event; } ;
typedef TYPE_1__ ttstate_t ;
struct TYPE_9__ {int handled; scalar_t__ tid; int seen; int signal_value; scalar_t__ stepping_mode; scalar_t__ have_signal; struct TYPE_9__* next; scalar_t__ terminated; } ;
typedef TYPE_2__ thread_info ;
typedef scalar_t__ lwpid_t ;
struct TYPE_10__ {TYPE_2__* head; } ;
typedef int TTRACE_ARG_TYPE ;


 scalar_t__ DO_STEP ;
 scalar_t__ TTEVT_NONE ;
 int TTS_STATEMASK ;
 int TTS_WASSUSPENDED ;
 int TT_LWP_CONTINUE ;
 int TT_LWP_SINGLE ;
 int TT_NIL ;
 int TT_USE_CURRENT_PC ;
 int add_tthread (int,scalar_t__) ;
 int call_ttrace (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ debug_on ;
 int error (char*) ;
 TYPE_2__* find_thread_info (scalar_t__) ;
 int get_pid_for (scalar_t__) ;
 int get_printable_name_of_ttrace_event (scalar_t__) ;
 scalar_t__ get_process_first_stopped_thread_id (int,TYPE_1__*) ;
 scalar_t__ get_process_next_stopped_thread_id (int,TYPE_1__*) ;
 scalar_t__ map_from_gdb_tid (scalar_t__) ;
 int printf (char*,...) ;
 int set_all_unseen () ;
 scalar_t__ target_signal_to_host (int) ;
 int thread_dropping_event_check (TYPE_2__*) ;
 TYPE_3__ thread_head ;
 int update_thread_list () ;
 int warning (char*,int ) ;

__attribute__((used)) static void
threads_continue_all_but_one (lwpid_t gdb_tid, int signal)
{
  thread_info *p;
  int thread_signal;
  lwpid_t real_tid;
  lwpid_t scan_tid;
  ttstate_t state;
  int real_pid;
  set_all_unseen ();
  real_tid = map_from_gdb_tid (gdb_tid);
  real_pid = get_pid_for (real_tid);

  scan_tid = get_process_first_stopped_thread_id (real_pid, &state);
  while (0 != scan_tid)
    {
      p = find_thread_info (scan_tid);
      if (((void*)0) == p)
 {
   add_tthread (real_pid, scan_tid);
   p = find_thread_info (scan_tid);





   p->handled = 1;

   if (state.tts_event != TTEVT_NONE)
     {


       warning ("Unexpected thread with \"%s\" event.",
         get_printable_name_of_ttrace_event (state.tts_event));
     }
 }
      else if (scan_tid != p->tid)
 error ("Bad data in thread database.");







      p->seen = 1;

      scan_tid = get_process_next_stopped_thread_id (real_pid, &state);
    }



  update_thread_list ();



  for (p = thread_head.head; p; p = p->next)
    {



      thread_dropping_event_check (p);



      if (p->have_signal)
 {
   thread_signal = p->signal_value;
   p->have_signal = 0;
 }
      else
 thread_signal = 0;

      if (p->tid != real_tid)
 {




   if (p->stepping_mode == DO_STEP)
     {


       call_ttrace (
       TT_LWP_SINGLE,
       p->tid,
       TT_USE_CURRENT_PC,
       (TTRACE_ARG_TYPE) target_signal_to_host (signal),
       TT_NIL);
     }
   else
     {


       call_ttrace (
       TT_LWP_CONTINUE,
       p->tid,
       TT_USE_CURRENT_PC,
      (TTRACE_ARG_TYPE) target_signal_to_host (thread_signal),
       TT_NIL);
     }
 }
      else
 {


   call_ttrace (
   TT_LWP_SINGLE,
   real_tid,
   TT_USE_CURRENT_PC,
   (TTRACE_ARG_TYPE) target_signal_to_host (signal),
   TT_NIL);
 }
    }
}
