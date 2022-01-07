
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_IGN ;
 scalar_t__ ignore_SIGINT ;
 int signal (int,int ) ;
 int signal_received ;

__attribute__((used)) static void
catchsig (int s)
{

  signal (s, SIG_IGN);

  if (! (s == SIGINT && ignore_SIGINT))
    signal_received = s;
}
