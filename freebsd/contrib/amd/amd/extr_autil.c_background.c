
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlog (char*,...) ;
 int dofork () ;
 scalar_t__ foreground ;

int
background(void)
{
  int pid = dofork();

  if (pid == 0) {
    dlog("backgrounded");
    foreground = 0;
  } else
    dlog("forked process %d", pid);
  return pid;
}
