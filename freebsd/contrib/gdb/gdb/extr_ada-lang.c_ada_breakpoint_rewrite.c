
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
ada_breakpoint_rewrite (char *arg, int *break_on_exceptionp)
{
  if (arg == ((void*)0))
    return arg;
  *break_on_exceptionp = 0;
  return arg;
}
