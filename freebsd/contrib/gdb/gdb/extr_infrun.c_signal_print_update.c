
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* signal_print ;

int
signal_print_update (int signo, int state)
{
  int ret = signal_print[signo];
  signal_print[signo] = state;
  return ret;
}
