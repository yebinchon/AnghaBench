
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int ENOSYS ;
 int ENOTTY ;
 scalar_t__ SOME_PID ;
 int errno ;
 scalar_t__ isatty (int) ;

int
tcsetpgrp (int fd, pid_t pgid)
{
  if (isatty (fd) && pgid == SOME_PID)
    return 0;
  errno = pgid == SOME_PID ? ENOTTY : ENOSYS;
  return -1;
}
