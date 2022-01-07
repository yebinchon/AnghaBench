
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int am_mypid ;
 int getpid () ;

pid_t
am_set_mypid(void)
{
  am_mypid = getpid();
  return am_mypid;
}
