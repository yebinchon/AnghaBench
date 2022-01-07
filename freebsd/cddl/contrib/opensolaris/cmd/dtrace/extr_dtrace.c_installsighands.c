
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int SIGINFO ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 scalar_t__ SIG_IGN ;
 scalar_t__ intr ;
 scalar_t__ sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 scalar_t__ siginfo ;

__attribute__((used)) static void
installsighands(void)
{
 struct sigaction act, oact;

 (void) sigemptyset(&act.sa_mask);
 act.sa_flags = 0;
 act.sa_handler = intr;

 if (sigaction(SIGINT, ((void*)0), &oact) == 0 && oact.sa_handler != SIG_IGN)
  (void) sigaction(SIGINT, &act, ((void*)0));

 if (sigaction(SIGTERM, ((void*)0), &oact) == 0 && oact.sa_handler != SIG_IGN)
  (void) sigaction(SIGTERM, &act, ((void*)0));
}
