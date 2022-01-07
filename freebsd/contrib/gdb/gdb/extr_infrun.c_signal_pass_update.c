
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* signal_program ;

int
signal_pass_update (int signo, int state)
{
  int ret = signal_program[signo];
  signal_program[signo] = state;
  return ret;
}
