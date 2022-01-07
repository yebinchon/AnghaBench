
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int pid_to_ptid (int) ;
 int target_post_wait (int ,int) ;
 int wait (int*) ;

int
ptrace_wait (ptid_t ptid, int *status)
{
  int wstate;

  wstate = wait (status);
  target_post_wait (pid_to_ptid (wstate), *status);
  return wstate;
}
