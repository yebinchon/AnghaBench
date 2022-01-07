
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;


 int current ;
 struct task_struct* find_task_by_pid_ns (int ,int ) ;
 int task_active_pid_ns (int ) ;

struct task_struct *find_task_by_vpid(pid_t vnr)
{
 return find_task_by_pid_ns(vnr, task_active_pid_ns(current));
}
