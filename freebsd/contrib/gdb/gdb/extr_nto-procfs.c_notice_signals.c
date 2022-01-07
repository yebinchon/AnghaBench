
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trace; } ;


 int NSIG ;
 TYPE_1__ run ;
 int sigaddset (int *,int) ;
 int sigdelset (int *,int) ;
 int signal_pass_state (int ) ;
 scalar_t__ signal_print_state (int ) ;
 scalar_t__ signal_stop_state (int ) ;
 int target_signal_from_host (int) ;

__attribute__((used)) static void
notice_signals (void)
{
  int signo;

  for (signo = 1; signo < NSIG; signo++)
    {
      if (signal_stop_state (target_signal_from_host (signo)) == 0
   && signal_print_state (target_signal_from_host (signo)) == 0
   && signal_pass_state (target_signal_from_host (signo)) == 1)
 sigdelset (&run.trace, signo);
      else
 sigaddset (&run.trace, signo);
    }
}
