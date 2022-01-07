
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_IGN ;
 scalar_t__ S_HARD_IGN ;
 scalar_t__ S_IGN ;
 int setsignal (int) ;
 scalar_t__* sigmode ;
 int signal (int,int ) ;

void
ignoresig(int signo)
{

 if (sigmode[signo] == 0)
  setsignal(signo);
 if (sigmode[signo] != S_IGN && sigmode[signo] != S_HARD_IGN) {
  signal(signo, SIG_IGN);
  sigmode[signo] = S_IGN;
 }
}
