
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ttrace_events ;
struct TYPE_2__ {int tte_events; } ;
typedef TYPE_1__ ttevent_t ;
typedef int TTRACE_ARG_TYPE ;


 int TTEVT_SYSCALL_ENTRY ;
 int TTEVT_SYSCALL_RETURN ;
 int TT_NIL ;
 int TT_PROC_GET_EVENT_MASK ;
 int TT_PROC_SET_EVENT_MASK ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 scalar_t__ errno ;
 int perror_with_name (char*) ;

__attribute__((used)) static void
hppa_enable_syscall_events (int pid)
{
  int tt_status;
  ttevent_t ttrace_events;


  tt_status = call_ttrace (TT_PROC_GET_EVENT_MASK,
      pid,
      (TTRACE_ARG_TYPE) & ttrace_events,
      (TTRACE_ARG_TYPE) sizeof (ttrace_events),
      TT_NIL);
  if (errno)
    perror_with_name ("ttrace");


  ttrace_events.tte_events |= TTEVT_SYSCALL_ENTRY;
  ttrace_events.tte_events |= TTEVT_SYSCALL_RETURN;

  tt_status = call_ttrace (TT_PROC_SET_EVENT_MASK,
      pid,
      (TTRACE_ARG_TYPE) & ttrace_events,
      (TTRACE_ARG_TYPE) sizeof (ttrace_events),
      TT_NIL);
  if (errno)
    perror_with_name ("ttrace");
}
