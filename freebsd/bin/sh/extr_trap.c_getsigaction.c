
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; } ;
typedef scalar_t__ sig_t ;


 int sigaction (int,struct sigaction*,struct sigaction*) ;

__attribute__((used)) static int
getsigaction(int signo, sig_t *sigact)
{
 struct sigaction sa;

 if (sigaction(signo, (struct sigaction *)0, &sa) == -1)
  return 0;
 *sigact = (sig_t) sa.sa_handler;
 return 1;
}
