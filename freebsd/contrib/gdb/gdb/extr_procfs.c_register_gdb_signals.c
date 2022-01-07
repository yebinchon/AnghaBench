
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;
typedef int gdb_sigset_t ;


 int NSIG ;
 int praddset (int *,int) ;
 int prdelset (int *,int) ;
 int proc_set_traced_signals (int *,int *) ;
 int signal_pass_state (int ) ;
 scalar_t__ signal_print_state (int ) ;
 scalar_t__ signal_stop_state (int ) ;
 int target_signal_from_host (int) ;

__attribute__((used)) static int
register_gdb_signals (procinfo *pi, gdb_sigset_t *signals)
{
  int signo;

  for (signo = 0; signo < NSIG; signo ++)
    if (signal_stop_state (target_signal_from_host (signo)) == 0 &&
 signal_print_state (target_signal_from_host (signo)) == 0 &&
 signal_pass_state (target_signal_from_host (signo)) == 1)
      prdelset (signals, signo);
    else
      praddset (signals, signo);

  return proc_set_traced_signals (pi, signals);
}
