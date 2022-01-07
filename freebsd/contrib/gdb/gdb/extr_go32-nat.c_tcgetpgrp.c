
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ENOTTY ;
 int SOME_PID ;
 int errno ;
 scalar_t__ isatty (int) ;

pid_t
tcgetpgrp (int fd)
{
  if (isatty (fd))
    return SOME_PID;
  errno = ENOTTY;
  return -1;
}
