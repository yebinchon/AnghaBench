
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TT_NIL ;
 int TT_PROC_DETACH ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 scalar_t__ errno ;
 int threads_continue_all_with_signals (int,int) ;

int
hppa_require_detach (int pid, int signal)
{
  int tt_status;





  if (signal != 0)
    {
      errno = 0;
      threads_continue_all_with_signals (pid, signal);
    }

  errno = 0;
  tt_status = call_ttrace (TT_PROC_DETACH,
      pid,
      TT_NIL,
      TT_NIL,
      TT_NIL);

  errno = 0;



  return pid;
}
