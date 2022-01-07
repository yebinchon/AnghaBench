
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;


 scalar_t__ TT_NIL ;
 int TT_PROC_STOP ;
 int call_real_ttrace (int ,scalar_t__,int ,int ,int ,scalar_t__) ;
 scalar_t__ errno ;
 int perror_with_name (char*) ;

__attribute__((used)) static void
stop_all_threads_of_process (pid_t real_pid)
{
  int ttw_status;

  ttw_status = call_real_ttrace (TT_PROC_STOP,
     (pid_t) real_pid,
     (lwpid_t) TT_NIL,
     (TTRACE_ARG_TYPE) TT_NIL,
     (TTRACE_ARG_TYPE) TT_NIL,
     TT_NIL);
  if (errno)
    perror_with_name ("ttrace stop of other threads");
}
