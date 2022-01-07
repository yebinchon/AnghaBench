
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int pid_t ;


 int PIDGET (int ) ;
 int kill (int ,int ) ;

int
child_thread_alive (ptid_t ptid)
{
  pid_t pid = PIDGET (ptid);

  return (kill (pid, 0) != -1);
}
