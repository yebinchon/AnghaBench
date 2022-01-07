
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* signal_stop ;

int
signal_stop_update (int signo, int state)
{
  int ret = signal_stop[signo];
  signal_stop[signo] = state;
  return ret;
}
