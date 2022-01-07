
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* signal_print ;

int
signal_print_state (int signo)
{
  return signal_print[signo];
}
