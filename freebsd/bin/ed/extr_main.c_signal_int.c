
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_int (int) ;
 scalar_t__ mutex ;
 int sigflags ;

void
signal_int(int signo)
{
 if (mutex)
  sigflags |= (1 << (signo - 1));
 else
  handle_int(signo);
}
