
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NumChildren ;
 int am_set_mypid () ;
 scalar_t__ foreground ;
 int fork () ;
 int sleep (int) ;

__attribute__((used)) static int
dofork(void)
{
  int pid;

top:
  pid = fork();

  if (pid < 0) {
    sleep(1);
    goto top;
  }
  if (pid == 0) {
    am_set_mypid();
    foreground = 0;
  } else {
    NumChildren++;
  }

  return pid;
}
