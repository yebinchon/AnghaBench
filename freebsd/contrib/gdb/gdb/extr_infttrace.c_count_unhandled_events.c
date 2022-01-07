
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tts_signo; } ;
struct TYPE_7__ {TYPE_1__ tts_signal; } ;
struct TYPE_8__ {scalar_t__ tts_event; TYPE_2__ tts_u; } ;
typedef TYPE_3__ ttstate_t ;
typedef int lwpid_t ;
typedef int CORE_ADDR ;


 scalar_t__ TTEVT_NONE ;
 scalar_t__ TTEVT_SIGNAL ;
 scalar_t__ debug_on ;
 char* get_printable_name_of_ttrace_event (scalar_t__) ;
 int get_process_first_stopped_thread_id (int,TYPE_3__*) ;
 int get_process_next_stopped_thread_id (int,TYPE_3__*) ;
 int get_raw_pc (int) ;
 int printf (char*,...) ;
 scalar_t__ was_handled (int) ;

__attribute__((used)) static int
count_unhandled_events (int real_pid, lwpid_t real_tid)
{
  ttstate_t tstate;
  lwpid_t ttid;
  int events_left;



  events_left = 0;
  ttid = get_process_first_stopped_thread_id (real_pid, &tstate);
  while (ttid > 0)
    {
      if (tstate.tts_event != TTEVT_NONE
   && !was_handled (ttid))
 {
   events_left++;
 }
      ttid = get_process_next_stopped_thread_id (real_pid, &tstate);
    }







  return events_left;
}
