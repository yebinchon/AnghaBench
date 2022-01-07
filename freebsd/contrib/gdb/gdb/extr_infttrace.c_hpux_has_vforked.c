
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tts_fpid; } ;
struct TYPE_8__ {TYPE_1__ tts_fork; } ;
struct TYPE_9__ {int tts_event; TYPE_2__ tts_u; } ;
typedef TYPE_3__ ttstate_t ;
typedef int ttrace_state ;
struct TYPE_10__ {int last_stop_state; } ;
typedef TYPE_4__ thread_info ;
typedef int TTRACE_ARG_TYPE ;


 int TTEVT_VFORK ;
 int TT_LWP_GET_STATE ;
 int TT_NIL ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 int copy_ttstate_t (TYPE_3__*,int *) ;
 scalar_t__ errno ;
 TYPE_4__* find_thread_info (int ) ;
 int map_from_gdb_tid (int) ;
 int perror_with_name (char*) ;

int
hpux_has_vforked (int tid, int *childpid)
{
  int tt_status;
  ttstate_t ttrace_state;
  thread_info *tinfo;


  tinfo = find_thread_info (map_from_gdb_tid (tid));
  if (tinfo != ((void*)0))
    copy_ttstate_t (&ttrace_state, &tinfo->last_stop_state);


  else
    {
      tt_status = call_ttrace (TT_LWP_GET_STATE,
          tid,
          (TTRACE_ARG_TYPE) & ttrace_state,
          (TTRACE_ARG_TYPE) sizeof (ttrace_state),
          TT_NIL);

      if (errno)
 perror_with_name ("ttrace");

      if (tt_status < 0)
 return 0;
    }

  if (ttrace_state.tts_event & TTEVT_VFORK)
    {
      *childpid = ttrace_state.tts_u.tts_fork.tts_fpid;
      return 1;
    }

  return 0;
}
