
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int XLOG_WARNING ;
 scalar_t__ fcntl (int,int ,int) ;
 int plog (int ,char*) ;

__attribute__((used)) static int
set_nonblock(int fd)
{
  int val;

  if (fd < 0)
     return 0;

  if ((val = fcntl(fd, F_GETFL, 0)) < 0) {
    plog(XLOG_WARNING, "set_nonblock fcntl F_GETFL error: %m");
    return 0;
  }

  val |= O_NONBLOCK;
  if (fcntl(fd, F_SETFL, val) < 0) {
    plog(XLOG_WARNING, "set_nonblock fcntl F_SETFL error: %m");
    return 0;
  }

  return 1;
}
