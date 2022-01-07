
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_mask; int sa_flags; } ;


 int NUM_SIGS ;
 int SA_RESTART ;
 int SIGCHLD ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 TYPE_1__ catchaction ;
 int catchsig ;
 int * initial_action ;
 scalar_t__ initial_handler (int) ;
 int sigaction (int ,int ,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,scalar_t__) ;
 int signal_handler (int ,int ) ;
 int * sigs ;
 int sigs_trapped ;

__attribute__((used)) static void
trapsigs (void)
{
  int i;
  for (i = 0; i < NUM_SIGS; i++)
    {



      initial_action[i] = signal (sigs[i], SIG_IGN);

      if (initial_handler (i) != SIG_IGN)
 signal_handler (sigs[i], catchsig);
    }






  sigs_trapped = 1;
}
