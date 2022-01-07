
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ am_mypid ;
 scalar_t__ foreground ;
 scalar_t__ getppid () ;

long
get_server_pid()
{
  return (long) (foreground ? am_mypid : getppid());
}
