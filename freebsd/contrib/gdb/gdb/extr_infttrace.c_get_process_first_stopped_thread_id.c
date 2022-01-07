
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tts_lwpid; } ;
typedef TYPE_1__ ttstate_t ;
typedef int pid_t ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;


 scalar_t__ EPROTO ;
 scalar_t__ TT_NIL ;
 int TT_PROC_GET_FIRST_LWP_STATE ;
 int call_real_ttrace (int ,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ errno ;
 int perror_with_name (char*) ;

__attribute__((used)) static lwpid_t
get_process_first_stopped_thread_id (int pid, ttstate_t *thread_state)
{
  int tt_status;

  tt_status = call_real_ttrace (TT_PROC_GET_FIRST_LWP_STATE,
    (pid_t) pid,
    (lwpid_t) TT_NIL,
    (TTRACE_ARG_TYPE) thread_state,
    (TTRACE_ARG_TYPE) sizeof (*thread_state),
    TT_NIL);

  if (errno)
    {
      if (errno == EPROTO)
 {






   tt_status = 1;
   errno = 0;
   return 0;
 }
      else
 perror_with_name ("ttrace");
    }

  if (tt_status < 0)


    return 0;

  return thread_state->tts_lwpid;
}
