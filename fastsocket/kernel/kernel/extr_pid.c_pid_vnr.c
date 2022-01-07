
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
typedef int pid_t ;


 int current ;
 int pid_nr_ns (struct pid*,int ) ;
 int task_active_pid_ns (int ) ;

pid_t pid_vnr(struct pid *pid)
{
 return pid_nr_ns(pid, task_active_pid_ns(current));
}
