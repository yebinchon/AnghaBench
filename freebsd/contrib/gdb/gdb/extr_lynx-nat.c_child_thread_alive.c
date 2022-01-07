
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int PIDGET (int ) ;
 int PTRACE_THREADUSER ;
 int ptrace (int ,int,int ,int ) ;

int
child_thread_alive (ptid_t ptid)
{
  int pid = PIDGET (ptid);
  return (ptrace (PTRACE_THREADUSER, pid, 0, 0) != -1);
}
