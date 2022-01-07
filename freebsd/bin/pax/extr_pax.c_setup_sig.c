
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; } ;


 scalar_t__ SIG_IGN ;
 int sigaction (int,struct sigaction const*,struct sigaction*) ;

__attribute__((used)) static int
setup_sig(int sig, const struct sigaction *n_hand)
{
 struct sigaction o_hand;

 if (sigaction(sig, ((void*)0), &o_hand) < 0)
  return (-1);

 if (o_hand.sa_handler == SIG_IGN)
  return (0);

 return (sigaction(sig, n_hand, ((void*)0)));
}
