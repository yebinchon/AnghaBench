
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tts_event; } ;
struct TYPE_6__ {int tid; int pid; TYPE_1__ last_stop_state; scalar_t__ have_state; int handled; } ;
typedef TYPE_2__ thread_info ;


 scalar_t__ TTEVT_FORK ;
 scalar_t__ TTEVT_SIGNAL ;
 scalar_t__ debug_on ;
 int get_printable_name_of_ttrace_event (scalar_t__) ;
 int print_tthread (TYPE_2__*) ;
 int warning (char*,int ,int ,...) ;

__attribute__((used)) static void
thread_dropping_event_check (thread_info *p)
{
  if (!p->handled)
    {
      if (p->have_state)
 {
   if (p->last_stop_state.tts_event == TTEVT_FORK)
     {

       ;
     }
   else if (p->last_stop_state.tts_event == TTEVT_SIGNAL)
     {


       ;
     }
   else
     {



       warning ("About to continue process %d, thread %d with unhandled event %s.",
         p->pid, p->tid,
         get_printable_name_of_ttrace_event (
          p->last_stop_state.tts_event));





     }
 }
      else
 {


   warning ("About to continue process %d, thread %d with unhandled event.",
     p->pid, p->tid);




 }
    }

}
