
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ttstate_t ;
struct TYPE_2__ {int tte_events; int tte_opts; int tte_signals; } ;
typedef TYPE_1__ ttevent_t ;
typedef int notifiable_events ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;


 int TTEO_NONE ;
 int TTEO_PROC_INHERIT ;
 int TTEVT_DEFAULT ;
 int TTEVT_EXEC ;
 int TTEVT_EXIT ;
 int TTEVT_FORK ;
 int TTEVT_LWP_CREATE ;
 int TTEVT_LWP_EXIT ;
 int TTEVT_LWP_TERMINATE ;
 int TTEVT_SIGNAL ;
 int TTEVT_VFORK ;
 scalar_t__ TT_NIL ;
 int TT_PROC_SET_EVENT_MASK ;
 int call_real_ttrace (int ,int,int ,int ,int ,scalar_t__) ;
 scalar_t__ debug_on ;
 scalar_t__ not_same_real_pid ;
 int printf (char*,int) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void
require_notification_of_events (int real_pid)
{
  int tt_status;
  ttevent_t notifiable_events;

  lwpid_t tid;
  ttstate_t thread_state;
  not_same_real_pid = 0;

  sigemptyset (&notifiable_events.tte_signals);
  notifiable_events.tte_opts = TTEO_NONE;
  notifiable_events.tte_opts |= TTEO_PROC_INHERIT;

  notifiable_events.tte_events = TTEVT_DEFAULT;
  notifiable_events.tte_events |= TTEVT_SIGNAL;
  notifiable_events.tte_events |= TTEVT_EXEC;
  notifiable_events.tte_events |= TTEVT_EXIT;
  notifiable_events.tte_events |= TTEVT_FORK;
  notifiable_events.tte_events |= TTEVT_VFORK;
  notifiable_events.tte_events |= TTEVT_LWP_CREATE;
  notifiable_events.tte_events |= TTEVT_LWP_EXIT;
  notifiable_events.tte_events |= TTEVT_LWP_TERMINATE;

  tt_status = call_real_ttrace (
     TT_PROC_SET_EVENT_MASK,
     real_pid,
     (lwpid_t) TT_NIL,
     (TTRACE_ARG_TYPE) & notifiable_events,
          (TTRACE_ARG_TYPE) sizeof (notifiable_events),
     TT_NIL);
}
