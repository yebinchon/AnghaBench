
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tts_event; int tts_scno; } ;
typedef TYPE_1__ ttstate_t ;
typedef int ttrace_state ;
struct TYPE_6__ {int last_stop_state; } ;
typedef TYPE_2__ thread_info ;
typedef enum target_waitkind { ____Placeholder_target_waitkind } target_waitkind ;
typedef int TTRACE_ARG_TYPE ;


 int TARGET_WAITKIND_SPURIOUS ;
 int TARGET_WAITKIND_SYSCALL_ENTRY ;
 int TARGET_WAITKIND_SYSCALL_RETURN ;
 int TTEVT_SYSCALL_ENTRY ;
 int TTEVT_SYSCALL_RETURN ;
 int TT_LWP_GET_STATE ;
 int TT_NIL ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 int copy_ttstate_t (TYPE_1__*,int *) ;
 scalar_t__ errno ;
 TYPE_2__* find_thread_info (int ) ;
 int map_from_gdb_tid (int) ;
 int perror_with_name (char*) ;

int
hpux_has_syscall_event (int pid, enum target_waitkind *kind, int *syscall_id)
{
  int tt_status;
  ttstate_t ttrace_state;
  thread_info *tinfo;


  tinfo = find_thread_info (map_from_gdb_tid (pid));
  if (tinfo != ((void*)0))
    copy_ttstate_t (&ttrace_state, &tinfo->last_stop_state);


  else
    {
      tt_status = call_ttrace (TT_LWP_GET_STATE,
          pid,
          (TTRACE_ARG_TYPE) & ttrace_state,
          (TTRACE_ARG_TYPE) sizeof (ttrace_state),
          TT_NIL);

      if (errno)
 perror_with_name ("ttrace");

      if (tt_status < 0)
 return 0;
    }

  *kind = TARGET_WAITKIND_SPURIOUS;
  *syscall_id = -1;

  if (ttrace_state.tts_event & TTEVT_SYSCALL_ENTRY)
    *kind = TARGET_WAITKIND_SYSCALL_ENTRY;
  else if (ttrace_state.tts_event & TTEVT_SYSCALL_RETURN)
    *kind = TARGET_WAITKIND_SYSCALL_RETURN;
  else
    return 0;

  *syscall_id = ttrace_state.tts_scno;
  return 1;
}
