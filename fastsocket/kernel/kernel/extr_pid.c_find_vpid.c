
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int current ;
 struct pid* find_pid_ns (int,int ) ;
 int task_active_pid_ns (int ) ;

struct pid *find_vpid(int nr)
{
 return find_pid_ns(nr, task_active_pid_ns(current));
}
